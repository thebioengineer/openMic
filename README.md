
# openMic

<!-- badges: start -->
<!-- badges: end -->

The goal of openMic is to add closed captions easily to your presentations using the built-in capabilities of your browser (SpeechRecognition or webkitSpeechRecognition).

This was heavily influenced by the [{xaringanExtra} package by Garrick Aiden-Buie](https://github.com/gadenbuie/xaringanExtra) and a [speech-recognition example by Dave Rupert](https://codepen.io/davatron5000/pen/IKAxb). 

## Installation

You can install the released version of {openMic} from github with:

``` r
remotes::install_github("thebioengineer/openMic")
```

## Example

This package is for creating closed captions in xaringan (or html) presentations. It floats at either the top or the bottom. This will only work for presentations opened in chrome.

Add this to your presentation by adding the following chunk into your presentation:

````
```{r openMic, include = FALSE}
openMic::openMic()
```
````

The captioning starts by default (you may have to give permission to start recording to chrome). Move the closed captions to the top or bottom of your screen using the `u` or `d` keys on your keyboard. 

To stop closed captioning, hold shift and double click the `a` button. Doing that again will restart the closed captioning.
