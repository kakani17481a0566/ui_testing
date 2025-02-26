// helpers/locatorHelper.js

export async function getLocatorXpath(locatorKey, locators) {
    let xpath;

    // Iterate through all available pages in the locators object
    for (let page in locators) {
        if (locators[page][locatorKey]) {
            xpath = locators[page][locatorKey]; // Retrieve the correct XPath from any page
            break; // Exit the loop once the locator is found
        }
    }

    if (!xpath) {
        throw new Error(`Locator with key "${locatorKey}" not found in any page.`);
    }

    return xpath;
}
