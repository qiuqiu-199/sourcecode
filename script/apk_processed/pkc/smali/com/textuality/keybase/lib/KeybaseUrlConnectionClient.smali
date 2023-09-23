.class public interface abstract Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient;
.super Ljava/lang/Object;
.source "KeybaseUrlConnectionClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient$Response;
    }
.end annotation


# virtual methods
.method public abstract getKeybaseBaseUrl()Ljava/lang/String;
.end method

.method public abstract getUrlResponse(Ljava/net/URL;Ljava/net/Proxy;Z)Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient$Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
