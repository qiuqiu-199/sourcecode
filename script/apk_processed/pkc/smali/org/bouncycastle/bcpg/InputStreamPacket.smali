.class public Lorg/bouncycastle/bcpg/InputStreamPacket;
.super Lorg/bouncycastle/bcpg/Packet;
.source "InputStreamPacket.java"


# instance fields
.field private in:Lorg/bouncycastle/bcpg/BCPGInputStream;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/bouncycastle/bcpg/Packet;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/bouncycastle/bcpg/InputStreamPacket;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    return-void
.end method


# virtual methods
.method public getInputStream()Lorg/bouncycastle/bcpg/BCPGInputStream;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/bouncycastle/bcpg/InputStreamPacket;->in:Lorg/bouncycastle/bcpg/BCPGInputStream;

    return-object v0
.end method
