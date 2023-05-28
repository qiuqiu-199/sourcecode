.class public final enum Lorg/inaturalist/android/INaturalistService$LoginType;
.super Ljava/lang/Enum;
.source "INaturalistService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/INaturalistService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoginType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/inaturalist/android/INaturalistService$LoginType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/inaturalist/android/INaturalistService$LoginType;

.field public static final enum FACEBOOK:Lorg/inaturalist/android/INaturalistService$LoginType;

.field public static final enum GOOGLE:Lorg/inaturalist/android/INaturalistService$LoginType;

.field public static final enum OAUTH_PASSWORD:Lorg/inaturalist/android/INaturalistService$LoginType;

.field public static final enum PASSWORD:Lorg/inaturalist/android/INaturalistService$LoginType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 376
    new-instance v0, Lorg/inaturalist/android/INaturalistService$LoginType;

    const-string v1, "PASSWORD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/inaturalist/android/INaturalistService$LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/inaturalist/android/INaturalistService$LoginType;->PASSWORD:Lorg/inaturalist/android/INaturalistService$LoginType;

    .line 377
    new-instance v0, Lorg/inaturalist/android/INaturalistService$LoginType;

    const-string v1, "GOOGLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/inaturalist/android/INaturalistService$LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/inaturalist/android/INaturalistService$LoginType;->GOOGLE:Lorg/inaturalist/android/INaturalistService$LoginType;

    .line 378
    new-instance v0, Lorg/inaturalist/android/INaturalistService$LoginType;

    const-string v1, "FACEBOOK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/inaturalist/android/INaturalistService$LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/inaturalist/android/INaturalistService$LoginType;->FACEBOOK:Lorg/inaturalist/android/INaturalistService$LoginType;

    .line 379
    new-instance v0, Lorg/inaturalist/android/INaturalistService$LoginType;

    const-string v1, "OAUTH_PASSWORD"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/inaturalist/android/INaturalistService$LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/inaturalist/android/INaturalistService$LoginType;->OAUTH_PASSWORD:Lorg/inaturalist/android/INaturalistService$LoginType;

    const/4 v0, 0x4

    .line 375
    new-array v0, v0, [Lorg/inaturalist/android/INaturalistService$LoginType;

    sget-object v1, Lorg/inaturalist/android/INaturalistService$LoginType;->PASSWORD:Lorg/inaturalist/android/INaturalistService$LoginType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/inaturalist/android/INaturalistService$LoginType;->GOOGLE:Lorg/inaturalist/android/INaturalistService$LoginType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/inaturalist/android/INaturalistService$LoginType;->FACEBOOK:Lorg/inaturalist/android/INaturalistService$LoginType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/inaturalist/android/INaturalistService$LoginType;->OAUTH_PASSWORD:Lorg/inaturalist/android/INaturalistService$LoginType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/inaturalist/android/INaturalistService$LoginType;->$VALUES:[Lorg/inaturalist/android/INaturalistService$LoginType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 375
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/inaturalist/android/INaturalistService$LoginType;
    .locals 1

    .line 375
    const-class v0, Lorg/inaturalist/android/INaturalistService$LoginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/inaturalist/android/INaturalistService$LoginType;

    return-object p0
.end method

.method public static values()[Lorg/inaturalist/android/INaturalistService$LoginType;
    .locals 1

    .line 375
    sget-object v0, Lorg/inaturalist/android/INaturalistService$LoginType;->$VALUES:[Lorg/inaturalist/android/INaturalistService$LoginType;

    invoke-virtual {v0}, [Lorg/inaturalist/android/INaturalistService$LoginType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/inaturalist/android/INaturalistService$LoginType;

    return-object v0
.end method
