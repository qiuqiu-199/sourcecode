.class public Lorg/bouncycastle/crypto/params/MQVPublicParameters;
.super Ljava/lang/Object;
.source "MQVPublicParameters.java"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private ephemeralPublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

.field private staticPublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/bouncycastle/crypto/params/MQVPublicParameters;->staticPublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 16
    iput-object p2, p0, Lorg/bouncycastle/crypto/params/MQVPublicParameters;->ephemeralPublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    return-void
.end method


# virtual methods
.method public getEphemeralPublicKey()Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/MQVPublicParameters;->ephemeralPublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    return-object v0
.end method

.method public getStaticPublicKey()Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/MQVPublicParameters;->staticPublicKey:Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    return-object v0
.end method
