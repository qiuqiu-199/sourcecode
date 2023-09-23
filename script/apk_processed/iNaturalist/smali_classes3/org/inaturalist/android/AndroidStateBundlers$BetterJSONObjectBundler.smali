.class public final Lorg/inaturalist/android/AndroidStateBundlers$BetterJSONObjectBundler;
.super Ljava/lang/Object;
.source "AndroidStateBundlers.java"

# interfaces
.implements Lcom/evernote/android/state/Bundler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/AndroidStateBundlers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BetterJSONObjectBundler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/evernote/android/state/Bundler<",
        "Lorg/inaturalist/android/BetterJSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 154
    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/AndroidStateBundlers$BetterJSONObjectBundler;->get(Ljava/lang/String;Landroid/os/Bundle;)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Landroid/os/Bundle;)Lorg/inaturalist/android/BetterJSONObject;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 163
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v1

    .line 167
    :cond_0
    new-instance p2, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {p2, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_1
    return-object v1
.end method

.method public bridge synthetic put(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 154
    check-cast p2, Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lorg/inaturalist/android/AndroidStateBundlers$BetterJSONObjectBundler;->put(Ljava/lang/String;Lorg/inaturalist/android/BetterJSONObject;Landroid/os/Bundle;)V

    return-void
.end method

.method public put(Ljava/lang/String;Lorg/inaturalist/android/BetterJSONObject;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/inaturalist/android/BetterJSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 157
    invoke-virtual {p2}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
