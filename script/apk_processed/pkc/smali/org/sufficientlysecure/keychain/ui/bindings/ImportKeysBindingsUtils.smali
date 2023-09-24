.class public Lorg/sufficientlysecure/keychain/ui/bindings/ImportKeysBindingsUtils;
.super Ljava/lang/Object;
.source "ImportKeysBindingsUtils.java"


# static fields
.field private static highlighterCache:Lorg/sufficientlysecure/keychain/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/util/LruCache<",
            "Ljava/lang/String;",
            "Lorg/sufficientlysecure/keychain/ui/util/Highlighter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 29
    new-instance v0, Lorg/sufficientlysecure/keychain/util/LruCache;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/util/LruCache;-><init>(I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/bindings/ImportKeysBindingsUtils;->highlighterCache:Lorg/sufficientlysecure/keychain/util/LruCache;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/bindings/ImportKeysBindingsUtils;---><clinit>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/bindings/ImportKeysBindingsUtils;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getColor(Landroid/content/Context;Z)I
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    :cond_0
    const v1, 0x7f040089

    .line 46
    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/FormattingUtils;->getColorFromAttr(Landroid/content/Context;I)I

    move-result v0

    return v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/bindings/ImportKeysBindingsUtils;--->getColor(Landroid/content/Context;Z)I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getHighlighter(Landroid/content/Context;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/util/Highlighter;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 32
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/bindings/ImportKeysBindingsUtils;->highlighterCache:Lorg/sufficientlysecure/keychain/util/LruCache;

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/util/Highlighter;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/util/Highlighter;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/Highlighter;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ui/util/Highlighter;->setQuery(Ljava/lang/String;)V

    .line 36
    sget-object v1, Lorg/sufficientlysecure/keychain/ui/bindings/ImportKeysBindingsUtils;->highlighterCache:Lorg/sufficientlysecure/keychain/util/LruCache;

    invoke-virtual {v1, v2, v0}, Lorg/sufficientlysecure/keychain/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/bindings/ImportKeysBindingsUtils;--->getHighlighter(Landroid/content/Context;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/util/Highlighter;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
