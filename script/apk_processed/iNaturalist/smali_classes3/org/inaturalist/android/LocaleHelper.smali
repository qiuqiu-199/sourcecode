.class public Lorg/inaturalist/android/LocaleHelper;
.super Ljava/lang/Object;
.source "LocaleHelper.java"


# static fields
.field private static final DefaultLocale:Ljava/lang/String; = "en"

.field public static final SupportedLocales:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    .line 13
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "eu"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "gl"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lorg/inaturalist/android/LocaleHelper;->SupportedLocales:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultLocale()Ljava/lang/String;
    .locals 3

    .line 22
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 23
    :goto_0
    sget-object v2, Lorg/inaturalist/android/LocaleHelper;->SupportedLocales:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 24
    sget-object v2, Lorg/inaturalist/android/LocaleHelper;->SupportedLocales:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    sget-object v0, Lorg/inaturalist/android/LocaleHelper;->SupportedLocales:[Ljava/lang/String;

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "en"

    return-object v0
.end method
