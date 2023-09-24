.class public Lorg/bouncycastle/bcpg/OpaquePublicBCPGKey;
.super Lorg/bouncycastle/bcpg/BCPGObject;
.source "OpaquePublicBCPGKey.java"

# interfaces
.implements Lorg/bouncycastle/bcpg/BCPGKey;


# instance fields
.field private final data:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lorg/bouncycastle/bcpg/BCPGObject;-><init>()V

    .line 27
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readAll()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/bcpg/OpaquePublicBCPGKey;->data:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/bouncycastle/bcpg/BCPGObject;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/bouncycastle/bcpg/OpaquePublicBCPGKey;->data:[B

    return-void
.end method


# virtual methods
.method public encode(Lorg/bouncycastle/bcpg/BCPGOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/bouncycastle/bcpg/OpaquePublicBCPGKey;->data:[B

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write([B)V

    return-void
.end method

.method public getEncoded()[B
    .locals 1

    .line 58
    :try_start_0
    invoke-super {p0}, Lorg/bouncycastle/bcpg/BCPGObject;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
