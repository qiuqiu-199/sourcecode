.class public final Lcom/google/android/gms/games/video/VideoConfiguration$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/video/VideoConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzbfQ:I

.field private zzbfX:I

.field private zzbfY:Ljava/lang/String;

.field private zzbfZ:Ljava/lang/String;

.field private zzbga:Ljava/lang/String;

.field private zzbgb:Ljava/lang/String;

.field private zzbgc:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbfX:I

    iput p2, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbfQ:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbgc:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbfY:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbfZ:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbga:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbgb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/games/video/VideoConfiguration;
    .locals 9

    new-instance v8, Lcom/google/android/gms/games/video/VideoConfiguration;

    iget v1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbfX:I

    iget v2, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbfQ:I

    iget-boolean v7, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbgc:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/games/video/VideoConfiguration;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v8
.end method

.method public setCaptureMode(I)Lcom/google/android/gms/games/video/VideoConfiguration$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbfQ:I

    return-object p0
.end method

.method public setQualityLevel(I)Lcom/google/android/gms/games/video/VideoConfiguration$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->zzbfX:I

    return-object p0
.end method
