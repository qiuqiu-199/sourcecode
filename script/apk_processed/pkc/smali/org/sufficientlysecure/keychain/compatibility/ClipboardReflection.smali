.class public Lorg/sufficientlysecure/keychain/compatibility/ClipboardReflection;
.super Ljava/lang/Object;
.source "ClipboardReflection.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 29
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/compatibility/ClipboardReflection;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static clearClipboard(Landroid/content/Context;)V
    .locals 5

    move-object/16 v2, p0

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v0, "clipboard"

    .line 59
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    if-nez v2, :cond_1

    return-void

    :cond_1
    const-string v0, ""

    const-string v1, ""

    .line 64
    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/compatibility/ClipboardReflection;--->clearClipboard(Landroid/content/Context;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getClipboardText(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    move-object/16 v4, p0

    const/4 v0, 0x0

    if-nez v4, :cond_0

    return-object v0

    :cond_0
    const-string v1, "clipboard"

    .line 36
    invoke-virtual {v4, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    if-nez v1, :cond_1

    return-object v0

    .line 41
    :cond_1
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 42
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    .line 48
    invoke-virtual {v1, v4}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 50
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    const-string v4, "No clipboard data!"

    .line 43
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v4, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/compatibility/ClipboardReflection;--->getClipboardText(Landroid/content/Context;)Ljava/lang/String;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
