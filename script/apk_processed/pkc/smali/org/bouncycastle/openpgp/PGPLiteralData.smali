.class public Lorg/bouncycastle/openpgp/PGPLiteralData;
.super Ljava/lang/Object;
.source "PGPLiteralData.java"


# static fields
.field public static final NOW:Ljava/util/Date;


# instance fields
.field data:Lorg/bouncycastle/bcpg/LiteralDataPacket;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/openpgp/PGPLiteralData;->NOW:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readPacket()Lorg/bouncycastle/bcpg/Packet;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/bcpg/LiteralDataPacket;

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPLiteralData;->data:Lorg/bouncycastle/bcpg/LiteralDataPacket;

    return-void
.end method


# virtual methods
.method public findDataLength()Ljava/lang/Long;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPLiteralData;->data:Lorg/bouncycastle/bcpg/LiteralDataPacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/LiteralDataPacket;->getInputStream()Lorg/bouncycastle/bcpg/BCPGInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/BCPGInputStream;->findDataLength()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPLiteralData;->data:Lorg/bouncycastle/bcpg/LiteralDataPacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/LiteralDataPacket;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()I
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPLiteralData;->data:Lorg/bouncycastle/bcpg/LiteralDataPacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/LiteralDataPacket;->getFormat()I

    move-result v0

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPLiteralData;->data:Lorg/bouncycastle/bcpg/LiteralDataPacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/LiteralDataPacket;->getInputStream()Lorg/bouncycastle/bcpg/BCPGInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getModificationTime()Ljava/util/Date;
    .locals 3

    .line 71
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPLiteralData;->data:Lorg/bouncycastle/bcpg/LiteralDataPacket;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/LiteralDataPacket;->getModificationTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method
