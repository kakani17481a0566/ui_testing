import { Given, When, Then } from '@wdio/cucumber-framework';
import { expect } from '@wdio/globals';
import LoginPage from '../../y/login.page';
import SecurePage from '../../y/secure.page';
// import { assert } from 'chai';
import { getLocatorXpath } from '../locators/locatorHelper';  // Adjust the import path if needed
import locators from '../locators/locators.js';  // Make sure the path is correct

const pages = {
    login: LoginPage
}

Given(/^I am on the (\w+) page$/, async (page) => {
    console.log(`Navigating to the ${page} page`);
    await pages[page].open();
});

When(/^I login with (\w+) and (.+)$/, async (username, password) => {
    console.log(`Logging in with username: ${username} and password: ${password}`);
    await LoginPage.login(username, password);
});

Then(/^I should see a flash message saying (.*)$/, async (message) => {
    console.log(`Checking for flash message: ${message}`);
    await expect(SecurePage.flashAlert).toBeExisting();
    await expect(SecurePage.flashAlert).toHaveText(expect.stringContaining(message));
});

Given(/^I visit the r20 page$/, async () => {
    console.log('Navigating to the r20 page');
    await browser.url('https://kakani17481a0566.github.io/r20.github.io/');
});

When(/^I wait for (\d+) seconds$/, async (seconds) => {
    console.log(`Waiting for ${seconds} seconds`);
    const milliseconds = seconds * 1000; // Convert seconds to milliseconds
    await browser.pause(milliseconds); // Pause for the given number of milliseconds
});

Then(/^the element located by "(.*?)" should contain the text "(.*?)"$/, async (locatorKey, expectedText) => {
    try {
        // Add a 3-second delay as the first step
        await new Promise(resolve => setTimeout(resolve, 3000)); // 3000 ms = 3 seconds
        
        console.log(`Retrieving XPath for locator key: ${locatorKey}`);
        const xpath = await getLocatorXpath(locatorKey, locators);
        if (!xpath) {
            throw new Error(`XPath for locator key "${locatorKey}" not found`);
        }
        console.log(`Locating element using XPath: ${xpath}`);
        const element = await $(xpath);
        if (!element) {
            throw new Error(`Element located by XPath "${xpath}" not found`);
        }
        console.log('Getting text of the located element');
        const text = await element.getText();
        console.log(`Element text is: "${text}"`);
        console.log(`Checking if the element text contains the expected text: "${expectedText}"`);
        
        await expect(text).toContain(expectedText);
        console.log(`Test passed: Element text contains the expected value.`);
    } catch (error) {
        console.error(`Error during text validation: ${error.message}`);
        console.error(`Expected text: "${expectedText}"`);
        console.error(`Actual text: "${text}"`);
        throw error;
    }
});




Then(/^I click on the element located by "(.*?)"$/, async (locatorKey) => {
    console.log(`Retrieving XPath for locator key: ${locatorKey}`);

    // Get the XPath by calling the helper function
    const xpath = await getLocatorXpath(locatorKey, locators); // Pass the locator key and locators object

    console.log(`XPath retrieved: ${xpath}`);
    console.log(`Locating element using XPath: ${xpath}`);
    const element = await $(xpath); // Locate the element by the XPath

    console.log('Element located successfully');
    console.log('Clicking on the located element');
    await element.click(); // Click the element
    console.log('Element clicked successfully');
});



Then(/^I pass the value "(.*?)" to the element located by "(.*?)"$/, async (value, locatorKey) => {
    console.log(`Retrieving XPath for locator key: ${locatorKey}`);

    // Get the XPath by calling the helper function
    const xpath = await getLocatorXpath(locatorKey, locators); // Pass the locator key and locators object

    console.log(`XPath retrieved: ${xpath}`);
    console.log(`Locating element using XPath: ${xpath}`);
    const element = await $(xpath); // Locate the element by the XPath

    console.log('Element located successfully');
    console.log(`Passing value: ${value} to the element`);
    await element.setValue(value); // Set the value to the element
    console.log('Value passed successfully');
});


Then(/^I should take a screenshot$/, async () => {
    try {
        const timestamp = new Date().toISOString().replace(/[:.]/g, '-'); // Create timestamp for the screenshot name
        const screenshotPath = `./screenshots/screenshot-${timestamp}.png`; // Set path for saving the screenshot

        // Capture the screenshot
        await browser.saveScreenshot(screenshotPath);

        console.log(`Screenshot saved at: ${screenshotPath}`);
    } catch (error) {
        console.error('Error capturing screenshot:', error);
        throw error; // Rethrow the error after logging it
    }
});

Then(/^I scroll until I find the element located by "(.*?)"$/, async (locatorKey) => {
    console.log(`Retrieving XPath for locator key: ${locatorKey}`);

    // Get the XPath by calling the helper function
    const xpath = await getLocatorXpath(locatorKey, locators); // Pass the locator key and locators object

    console.log(`XPath retrieved: ${xpath}`);
    console.log(`Locating element using XPath: ${xpath}`);
    const element = await $(xpath); // Locate the element by the XPath

    console.log('Scrolling until the element is in view');
    await element.scrollIntoView(); // Scroll until the element is in view

    console.log('Element is now in view');
});

Then(/^the button located by "(.*?)" should be enabled$/, async (locatorKey) => {
    console.log(`Retrieving XPath for locator key: ${locatorKey}`);

    // Get the XPath by calling the helper function
    const xpath = await getLocatorXpath(locatorKey, locators); // Pass the locator key and locators object

    console.log(`XPath retrieved: ${xpath}`);
    console.log(`Locating button using XPath: ${xpath}`);
    const button = await $(xpath); // Locate the button by the XPath

    console.log('Checking if the button is enabled');
    const isEnabled = await button.isEnabled(); // Check if the button is enabled

    console.log(`Button enabled status: ${isEnabled}`);
    await expect(isEnabled).toBe(true); // Assert that the button is enabled
});


Then(/^the button located by "(.*?)" should be disabled$/, async (locatorKey) => {
    console.log(`Retrieving XPath for locator key: ${locatorKey}`);

    // Get the XPath by calling the helper function
    const xpath = await getLocatorXpath(locatorKey, locators); // Pass the locator key and locators object

    console.log(`XPath retrieved: ${xpath}`);
    console.log(`Locating button using XPath: ${xpath}`);
    const button = await $(xpath); // Locate the button by the XPath

    console.log('Checking if the button is disabled');
    const isEnabled = await button.isEnabled(); // Check if the button is enabled

    console.log(`Button enabled status: ${isEnabled}`);
    await expect(isEnabled).toBe(false); // Assert that the button is disabled
});

import fs from 'fs';


// Generate the timestamp before using it in the screenshot path
const timestamp = new Date().toISOString().replace(/[:.]/g, '-');

// Ensure the screenshots directory exists
const screenshotsDir = './reports/html-reports/screenshots';
if (!fs.existsSync(screenshotsDir)) {
    fs.mkdirSync(screenshotsDir, { recursive: true });
}

// Define the screenshot path
const screenshotPath = `${screenshotsDir}/screenshot-${timestamp}.png`;

// Capture the screenshot
await browser.saveScreenshot(screenshotPath);
console.log(`Screenshot saved at: ${screenshotPath}`);
