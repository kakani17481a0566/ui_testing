import { Given, When, Then } from '@wdio/cucumber-framework';
import { expect } from '@wdio/globals';
import { getLocatorXpath } from '../locators/locatorHelper';  // Ensure correct path
import locators from '../locators/locators.js';  
import fs from 'fs';
import path from 'path';  // Use ES module import for consistency
import { fileURLToPath } from 'url';
import os from 'os'; // Import OS module to get home directory


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
    let text; // Declare text outside the try block to access it in the catch block
    try {       
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
        text = await element.getText(); // Assign text here
        console.log(`Element text is: "${text}"`);
        console.log(`Checking if the element text exactly matches the expected text: "${expectedText}"`);
        
        // Use toEqual for exact match
        await expect(text).toEqual(expectedText);
        console.log(`Test passed: Element text exactly matches the expected value.`);
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
        const timestamp = new Date().toISOString().replace(/[:.]/g, '-');
        const screenshotPath = `./reports/html-reports/screenshots/screenshot-${timestamp}.png`; // Relative path

        // Ensure that the directory exists or create it before taking the screenshot
        const dir = './reports/html-reports/screenshots';
        if (!fs.existsSync(dir)) {
            fs.mkdirSync(dir, { recursive: true }); // Create the directory if it doesn't exist
        }

        // Capture the screenshot
        await browser.saveScreenshot(screenshotPath);
        console.log(`Screenshot saved at: ${screenshotPath}`);
    } catch (error) {
        console.error('Error capturing screenshot:', error);
        throw error; // Rethrow the error after logging it
    }
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







// Define __dirname for ES Modules
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

Then(/^I should verify that a CSV file is downloaded$/, async () => {
    const downloadPath = path.join(os.homedir(), 'Downloads'); // Get dynamic Downloads folder path
    const expectedFile = path.join(downloadPath, 'internal_marks.csv');

    console.log(`Checking if CSV file exists at: ${expectedFile}`);
    await browser.pause(3000); // Pause to allow file download

    if (fs.existsSync(expectedFile)) {
        console.log(`✅ CSV file successfully downloaded: ${expectedFile}`);
    } else {
        throw new Error(`❌ CSV file was not downloaded: ${expectedFile}`);
    }
});





Then(/^I should verify that a PDF file is downloaded$/, async () => {
    const downloadPath = path.join(os.homedir(), 'Downloads'); // Dynamically get the Downloads folder
    const expectedFile = path.join(downloadPath, 'Internal_Marks_Report.pdf');

    console.log(`Checking if PDF file exists at: ${expectedFile}`);
    await browser.pause(3000); // Pause to allow file download

    if (fs.existsSync(expectedFile)) {
        console.log(`✅ PDF file successfully downloaded: ${expectedFile}`);
    } else {
        throw new Error(`❌ PDF file was not downloaded: ${expectedFile}`);
    }
});
