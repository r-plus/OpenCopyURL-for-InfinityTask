%hook UIApplication
- (BOOL)openURL:(NSURL *)url
{
    if ([[url absoluteString] hasPrefix:@"http"]) {
        [%c(UIPasteboard) generalPasteboard].URL = url;
        return YES;
    }
    return %orig;
}
%end
