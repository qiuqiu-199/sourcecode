.class public final enum Lorg/piwik/sdk/tools/Connectivity$Type;
.super Ljava/lang/Enum;
.source "Connectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/piwik/sdk/tools/Connectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/piwik/sdk/tools/Connectivity$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/piwik/sdk/tools/Connectivity$Type;

.field public static final enum MOBILE:Lorg/piwik/sdk/tools/Connectivity$Type;

.field public static final enum NONE:Lorg/piwik/sdk/tools/Connectivity$Type;

.field public static final enum WIFI:Lorg/piwik/sdk/tools/Connectivity$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 25
    new-instance v0, Lorg/piwik/sdk/tools/Connectivity$Type;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/piwik/sdk/tools/Connectivity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/piwik/sdk/tools/Connectivity$Type;->NONE:Lorg/piwik/sdk/tools/Connectivity$Type;

    new-instance v0, Lorg/piwik/sdk/tools/Connectivity$Type;

    const-string v1, "MOBILE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/piwik/sdk/tools/Connectivity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/piwik/sdk/tools/Connectivity$Type;->MOBILE:Lorg/piwik/sdk/tools/Connectivity$Type;

    new-instance v0, Lorg/piwik/sdk/tools/Connectivity$Type;

    const-string v1, "WIFI"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/piwik/sdk/tools/Connectivity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/piwik/sdk/tools/Connectivity$Type;->WIFI:Lorg/piwik/sdk/tools/Connectivity$Type;

    const/4 v0, 0x3

    .line 24
    new-array v0, v0, [Lorg/piwik/sdk/tools/Connectivity$Type;

    sget-object v1, Lorg/piwik/sdk/tools/Connectivity$Type;->NONE:Lorg/piwik/sdk/tools/Connectivity$Type;

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/tools/Connectivity$Type;->MOBILE:Lorg/piwik/sdk/tools/Connectivity$Type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/piwik/sdk/tools/Connectivity$Type;->WIFI:Lorg/piwik/sdk/tools/Connectivity$Type;

    aput-object v1, v0, v4

    sput-object v0, Lorg/piwik/sdk/tools/Connectivity$Type;->$VALUES:[Lorg/piwik/sdk/tools/Connectivity$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/piwik/sdk/tools/Connectivity$Type;
    .locals 1

    .line 24
    const-class v0, Lorg/piwik/sdk/tools/Connectivity$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/piwik/sdk/tools/Connectivity$Type;

    return-object p0
.end method

.method public static values()[Lorg/piwik/sdk/tools/Connectivity$Type;
    .locals 1

    .line 24
    sget-object v0, Lorg/piwik/sdk/tools/Connectivity$Type;->$VALUES:[Lorg/piwik/sdk/tools/Connectivity$Type;

    invoke-virtual {v0}, [Lorg/piwik/sdk/tools/Connectivity$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/piwik/sdk/tools/Connectivity$Type;

    return-object v0
.end method
