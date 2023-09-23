.class public final enum Lorg/piwik/sdk/dispatcher/DispatchMode;
.super Ljava/lang/Enum;
.source "DispatchMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/piwik/sdk/dispatcher/DispatchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/piwik/sdk/dispatcher/DispatchMode;

.field public static final enum ALWAYS:Lorg/piwik/sdk/dispatcher/DispatchMode;

.field public static final enum WIFI_ONLY:Lorg/piwik/sdk/dispatcher/DispatchMode;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lorg/piwik/sdk/dispatcher/DispatchMode;

    const-string v1, "ALWAYS"

    const-string v2, "always"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/piwik/sdk/dispatcher/DispatchMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/dispatcher/DispatchMode;->ALWAYS:Lorg/piwik/sdk/dispatcher/DispatchMode;

    .line 14
    new-instance v0, Lorg/piwik/sdk/dispatcher/DispatchMode;

    const-string v1, "WIFI_ONLY"

    const-string v2, "wifi_only"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/piwik/sdk/dispatcher/DispatchMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/dispatcher/DispatchMode;->WIFI_ONLY:Lorg/piwik/sdk/dispatcher/DispatchMode;

    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [Lorg/piwik/sdk/dispatcher/DispatchMode;

    sget-object v1, Lorg/piwik/sdk/dispatcher/DispatchMode;->ALWAYS:Lorg/piwik/sdk/dispatcher/DispatchMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/piwik/sdk/dispatcher/DispatchMode;->WIFI_ONLY:Lorg/piwik/sdk/dispatcher/DispatchMode;

    aput-object v1, v0, v4

    sput-object v0, Lorg/piwik/sdk/dispatcher/DispatchMode;->$VALUES:[Lorg/piwik/sdk/dispatcher/DispatchMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/piwik/sdk/dispatcher/DispatchMode;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/piwik/sdk/dispatcher/DispatchMode;
    .locals 1

    .line 6
    const-class v0, Lorg/piwik/sdk/dispatcher/DispatchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/piwik/sdk/dispatcher/DispatchMode;

    return-object p0
.end method

.method public static values()[Lorg/piwik/sdk/dispatcher/DispatchMode;
    .locals 1

    .line 6
    sget-object v0, Lorg/piwik/sdk/dispatcher/DispatchMode;->$VALUES:[Lorg/piwik/sdk/dispatcher/DispatchMode;

    invoke-virtual {v0}, [Lorg/piwik/sdk/dispatcher/DispatchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/piwik/sdk/dispatcher/DispatchMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/piwik/sdk/dispatcher/DispatchMode;->key:Ljava/lang/String;

    return-object v0
.end method
