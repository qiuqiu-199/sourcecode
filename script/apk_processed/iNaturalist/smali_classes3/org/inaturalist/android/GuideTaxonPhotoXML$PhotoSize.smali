.class public final enum Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;
.super Ljava/lang/Enum;
.source "GuideTaxonPhotoXML.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/GuideTaxonPhotoXML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhotoSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

.field public static final enum LARGE:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

.field public static final enum MEDIUM:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

.field public static final enum SMALL:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

.field public static final enum THUMBNAIL:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 23
    new-instance v0, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

    const-string v1, "THUMBNAIL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;->THUMBNAIL:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

    .line 24
    new-instance v0, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

    const-string v1, "SMALL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;->SMALL:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

    .line 25
    new-instance v0, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

    const-string v1, "MEDIUM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;->MEDIUM:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

    .line 26
    new-instance v0, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

    const-string v1, "LARGE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;->LARGE:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

    const/4 v0, 0x4

    .line 22
    new-array v0, v0, [Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

    sget-object v1, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;->THUMBNAIL:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

    aput-object v1, v0, v2

    sget-object v1, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;->SMALL:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

    aput-object v1, v0, v3

    sget-object v1, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;->MEDIUM:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

    aput-object v1, v0, v4

    sget-object v1, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;->LARGE:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

    aput-object v1, v0, v5

    sput-object v0, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;->$VALUES:[Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;
    .locals 1

    .line 22
    const-class v0, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

    return-object p0
.end method

.method public static values()[Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;
    .locals 1

    .line 22
    sget-object v0, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;->$VALUES:[Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

    invoke-virtual {v0}, [Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

    return-object v0
.end method
