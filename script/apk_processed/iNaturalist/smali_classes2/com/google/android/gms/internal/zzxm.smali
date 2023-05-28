.class public Lcom/google/android/gms/internal/zzxm;
.super Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;


# instance fields
.field private final zzarP:Lcom/google/android/gms/cast/framework/media/ImagePicker;

.field private final zzasZ:Lcom/google/android/gms/cast/framework/media/ImageHints;

.field private final zzatC:Landroid/widget/ImageView;

.field private final zzatD:Landroid/graphics/Bitmap;

.field private final zzatE:Lcom/google/android/gms/internal/zzxf;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;I)V
    .locals 0
    .param p3    # Lcom/google/android/gms/cast/framework/media/ImageHints;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxm;->zzatC:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzxm;->zzasZ:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxm;->zzatD:Landroid/graphics/Bitmap;

    invoke-static {p2}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastContext;->getCastOptions()Lcom/google/android/gms/cast/framework/CastOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getImagePicker()Lcom/google/android/gms/cast/framework/media/ImagePicker;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzxm;->zzarP:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    new-instance p1, Lcom/google/android/gms/internal/zzxf;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzxf;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxm;->zzatE:Lcom/google/android/gms/internal/zzxf;

    return-void
.end method

.method private zza(Lcom/google/android/gms/cast/MediaQueueItem;)Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaQueueItem;->getMedia()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxm;->zzarP:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxm;->zzarP:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzxm;->zzasZ:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/framework/media/ImagePicker;->onPickImage(Lcom/google/android/gms/cast/MediaMetadata;Lcom/google/android/gms/cast/framework/media/ImageHints;)Lcom/google/android/gms/common/images/WebImage;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/cast/framework/media/MediaUtils;->getImageUri(Lcom/google/android/gms/cast/MediaInfo;I)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzxm;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzxm;->zzatC:Landroid/widget/ImageView;

    return-object p0
.end method

.method private zztW()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzxm;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getPreloadedItem()Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzxm;->zza(Lcom/google/android/gms/cast/MediaQueueItem;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxm;->zzatC:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxm;->zzatD:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzxm;->zzatE:Lcom/google/android/gms/internal/zzxf;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzxf;->zzo(Landroid/net/Uri;)Z

    :goto_0
    return-void

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxm;->zzatC:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxm;->zzatD:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public onMediaStatusUpdated()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzxm;->zztW()V

    return-void
.end method

.method public onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzxm;->zzatE:Lcom/google/android/gms/internal/zzxf;

    new-instance v0, Lcom/google/android/gms/internal/zzxm$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzxm$1;-><init>(Lcom/google/android/gms/internal/zzxm;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzxf;->zza(Lcom/google/android/gms/internal/zzxf$zza;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzxm;->zzatC:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxm;->zzatD:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzxm;->zztW()V

    return-void
.end method

.method public onSessionEnded()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxm;->zzatE:Lcom/google/android/gms/internal/zzxf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzxf;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxm;->zzatC:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxm;->zzatD:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-super {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionEnded()V

    return-void
.end method
