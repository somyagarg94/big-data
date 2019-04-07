resource "azurerm_cognitive_account" "test" {
  name                = "takeda-account"
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.takeda_dev_rg.name}"
  kind                = "TextAnalytics"
#   kind                = "TextAnalytics", "TextTranslation", "SpeakerRecognition", 
#                          "CustomSpeech", "Speech", "SpeechServices", "SpeechTranslation", 
#                          "ContentModerator", "Recommendations"
  #kind - (Required) Specifies the type of Cognitive Service Account that should be created.
  # Possible values are Academic, Bing.Autosuggest, Bing.Autosuggest.v7, Bing.CustomSearch, 
  #Bing.Search, Bing.Search.v7, Bing.Speech, Bing.SpellCheck, Bing.SpellCheck.v7, 
  #ComputerVision, ContentModerator, CustomSpeech, Emotion, Face, LUIS, 
  #Recommendations, SpeakerRecognition, Speech, SpeechServices, SpeechTranslation, 
  #TextAnalytics, TextTranslation and WebLM. Changing this forces a new resource to be created.

  sku {
    name = "S0"
    tier = "${var.sku_tier}"
  }

  tags = {
    Acceptance = "Test"
  }
}

resource "azurerm_cognitive_account" "test1" {
  name                = "takeda-account"
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.takeda_dev_rg.name}"
  kind                = "Face"
  sku {
    name = "S0"
    tier = "${var.sku_tier}"
  }

  tags = {
    Acceptance = "Test"
  }
}