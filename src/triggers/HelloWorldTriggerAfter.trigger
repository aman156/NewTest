trigger HelloWorldTriggerAfter on Account (after insert) {
    System.debug('Hello Apex Trigger : after');
}