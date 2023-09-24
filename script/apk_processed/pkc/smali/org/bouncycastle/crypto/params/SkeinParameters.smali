.class public Lorg/bouncycastle/crypto/params/SkeinParameters;
.super Ljava/lang/Object;
.source "SkeinParameters.java"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;
    }
.end annotation


# instance fields
.field private parameters:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 87
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/SkeinParameters;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Hashtable;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lorg/bouncycastle/crypto/params/SkeinParameters;->parameters:Ljava/util/Hashtable;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Hashtable;Lorg/bouncycastle/crypto/params/SkeinParameters$1;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/SkeinParameters;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method


# virtual methods
.method public getKey()[B
    .locals 2

    .line 109
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/SkeinParameters;->parameters:Ljava/util/Hashtable;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getParameters()Ljava/util/Hashtable;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/SkeinParameters;->parameters:Ljava/util/Hashtable;

    return-object v0
.end method
