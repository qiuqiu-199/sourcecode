.class public Lcom/schokoladenbrown/Smooth;
.super Ljava/lang/Object;
.source "Smooth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/schokoladenbrown/Smooth$AlgoParametrized2;,
        Lcom/schokoladenbrown/Smooth$AlgoParametrized1;,
        Lcom/schokoladenbrown/Smooth$Algo;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "smoothrescale"

    .line 60
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native native_rescale(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IDD)Landroid/graphics/Bitmap;
.end method

.method public static rescale(Landroid/graphics/Bitmap;IILcom/schokoladenbrown/Smooth$Algo;)Landroid/graphics/Bitmap;
    .locals 8

    .line 42
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 43
    invoke-static {p3}, Lcom/schokoladenbrown/Smooth$Algo;->access$000(Lcom/schokoladenbrown/Smooth$Algo;)I

    move-result v3

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    .line 42
    invoke-static/range {v1 .. v7}, Lcom/schokoladenbrown/Smooth;->native_rescale(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IDD)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static rescale(Landroid/graphics/Bitmap;IILcom/schokoladenbrown/Smooth$AlgoParametrized1;D)Landroid/graphics/Bitmap;
    .locals 8

    .line 48
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 49
    invoke-static {p3}, Lcom/schokoladenbrown/Smooth$AlgoParametrized1;->access$100(Lcom/schokoladenbrown/Smooth$AlgoParametrized1;)I

    move-result v3

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-wide v4, p4

    .line 48
    invoke-static/range {v1 .. v7}, Lcom/schokoladenbrown/Smooth;->native_rescale(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IDD)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static rescale(Landroid/graphics/Bitmap;IILcom/schokoladenbrown/Smooth$AlgoParametrized2;DD)Landroid/graphics/Bitmap;
    .locals 8

    .line 54
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 55
    invoke-static {p3}, Lcom/schokoladenbrown/Smooth$AlgoParametrized2;->access$200(Lcom/schokoladenbrown/Smooth$AlgoParametrized2;)I

    move-result v3

    move-object v1, p0

    move-wide v4, p4

    move-wide v6, p6

    .line 54
    invoke-static/range {v1 .. v7}, Lcom/schokoladenbrown/Smooth;->native_rescale(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IDD)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
