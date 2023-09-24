.class public Lcom/google/android/gms/internal/zzxf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzxg$zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzxf$zza;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final zzPB:Landroid/content/Context;

.field private final zzasZ:Lcom/google/android/gms/cast/framework/media/ImageHints;

.field private zzata:Landroid/net/Uri;

.field private zzatb:Lcom/google/android/gms/internal/zzxg;

.field private zzatc:Lcom/google/android/gms/internal/zzxg$zzb;

.field private zzatd:Z

.field private zzate:Lcom/google/android/gms/internal/zzxf$zza;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/cast/framework/media/ImageHints;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzxf;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/cast/framework/media/ImageHints;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxf;->zzPB:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzxf;->zzasZ:Lcom/google/android/gms/cast/framework/media/ImageHints;

    new-instance p1, Lcom/google/android/gms/internal/zzxg$zzb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzxg$zzb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxf;->zzatc:Lcom/google/android/gms/internal/zzxg$zzb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzxf;->reset()V

    return-void
.end method

.method private reset()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxf;->zzatb:Lcom/google/android/gms/internal/zzxg;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxf;->zzatb:Lcom/google/android/gms/internal/zzxg;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzxg;->cancel(Z)Z

    iput-object v1, p0, Lcom/google/android/gms/internal/zzxf;->zzatb:Lcom/google/android/gms/internal/zzxg;

    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/zzxf;->zzata:Landroid/net/Uri;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzxf;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzxf;->zzatd:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzxf;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxf;->zzate:Lcom/google/android/gms/internal/zzxf$zza;

    return-void
.end method

.method public onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxf;->mBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzxf;->zzatd:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzxf;->zzate:Lcom/google/android/gms/internal/zzxf$zza;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzxf;->zzate:Lcom/google/android/gms/internal/zzxf$zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxf;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzxf$zza;->zzc(Landroid/graphics/Bitmap;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxf;->zzatb:Lcom/google/android/gms/internal/zzxg;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzxf$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxf;->zzate:Lcom/google/android/gms/internal/zzxf$zza;

    return-void
.end method

.method public zzo(Landroid/net/Uri;)Z
    .locals 9

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzxf;->reset()V

    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzxf;->zzata:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzxf;->reset()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxf;->zzata:Landroid/net/Uri;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzxf;->zzasZ:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/ImageHints;->getWidthInPixels()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzxf;->zzasZ:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/ImageHints;->getHeightInPixels()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzxf;->zzatc:Lcom/google/android/gms/internal/zzxg$zzb;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzxf;->zzPB:Landroid/content/Context;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzxf;->zzasZ:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/ImageHints;->getWidthInPixels()I

    move-result v5

    iget-object p1, p0, Lcom/google/android/gms/internal/zzxf;->zzasZ:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/ImageHints;->getHeightInPixels()I

    move-result v6

    const/4 v7, 0x0

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/zzxg$zzb;->zza(Landroid/content/Context;IIZLcom/google/android/gms/internal/zzxg$zza;)Lcom/google/android/gms/internal/zzxg;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzxf;->zzatc:Lcom/google/android/gms/internal/zzxg$zzb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxf;->zzPB:Landroid/content/Context;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/zzxg$zzb;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzxg$zza;)Lcom/google/android/gms/internal/zzxg;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/internal/zzxf;->zzatb:Lcom/google/android/gms/internal/zzxg;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzxf;->zzatb:Lcom/google/android/gms/internal/zzxg;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxf;->zzata:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzxg;->zzp(Landroid/net/Uri;)Landroid/os/AsyncTask;

    return v2

    :cond_3
    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzxf;->zzatd:Z

    if-eqz p1, :cond_4

    return v0

    :cond_4
    return v2
.end method
