.class public final enum Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;
.super Ljava/lang/Enum;
.source "OpenPgpSignatureResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/openpgp/OpenPgpSignatureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AutocryptPeerResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;

.field public static final enum MISMATCH:Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;

.field public static final enum NEW:Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;

.field public static final enum OK:Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;

.field public static final values:[Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 270
    new-instance v0, Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;->OK:Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;

    new-instance v0, Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;

    const-string v1, "NEW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;->NEW:Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;

    new-instance v0, Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;

    const-string v1, "MISMATCH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;->MISMATCH:Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;

    const/4 v0, 0x3

    .line 269
    new-array v0, v0, [Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;

    sget-object v1, Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;->OK:Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;

    aput-object v1, v0, v2

    sget-object v1, Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;->NEW:Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;

    aput-object v1, v0, v3

    sget-object v1, Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;->MISMATCH:Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;

    aput-object v1, v0, v4

    sput-object v0, Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;->$VALUES:[Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;

    .line 271
    invoke-static {}, Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;->values()[Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;

    move-result-object v0

    sput-object v0, Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;->values:[Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 269
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;
    .locals 1

    .line 269
    const-class v0, Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;

    return-object p0
.end method

.method public static values()[Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;
    .locals 1

    .line 269
    sget-object v0, Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;->$VALUES:[Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;

    invoke-virtual {v0}, [Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openintents/openpgp/OpenPgpSignatureResult$AutocryptPeerResult;

    return-object v0
.end method
