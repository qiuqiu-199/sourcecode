.class public final enum Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;
.super Ljava/lang/Enum;
.source "GuideTaxonPhotoXML.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/GuideTaxonPhotoXML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhotoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;

.field public static final enum LOCAL:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;

.field public static final enum REMOTE:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 17
    new-instance v0, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;

    const-string v1, "REMOTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;->REMOTE:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;

    .line 18
    new-instance v0, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;

    const-string v1, "LOCAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;->LOCAL:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;

    const/4 v0, 0x2

    .line 16
    new-array v0, v0, [Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;

    sget-object v1, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;->REMOTE:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;->LOCAL:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;->$VALUES:[Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;
    .locals 1

    .line 16
    const-class v0, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;

    return-object p0
.end method

.method public static values()[Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;
    .locals 1

    .line 16
    sget-object v0, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;->$VALUES:[Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;

    invoke-virtual {v0}, [Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;

    return-object v0
.end method
