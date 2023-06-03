.class public Lcom/google/android/gms/internal/zzxu;
.super Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;


# instance fields
.field private final zzatA:Landroid/view/View$OnClickListener;

.field private final zzatC:Landroid/widget/ImageView;

.field private final zzatR:Landroid/view/View;

.field private final zzatS:Z

.field private final zzatT:Landroid/graphics/drawable/Drawable;

.field private final zzatU:Ljava/lang/String;

.field private final zzatV:Landroid/graphics/drawable/Drawable;

.field private final zzatW:Ljava/lang/String;

.field private final zzatX:Landroid/graphics/drawable/Drawable;

.field private final zzatY:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/view/View;Z)V
    .locals 0
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxu;->zzatC:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzxu;->zzatT:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzxu;->zzatV:Landroid/graphics/drawable/Drawable;

    if-eqz p5, :cond_0

    move-object p4, p5

    :cond_0
    iput-object p4, p0, Lcom/google/android/gms/internal/zzxu;->zzatX:Landroid/graphics/drawable/Drawable;

    sget p1, Lcom/google/android/gms/R$string;->cast_play:I

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxu;->zzatU:Ljava/lang/String;

    sget p1, Lcom/google/android/gms/R$string;->cast_pause:I

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxu;->zzatW:Ljava/lang/String;

    sget p1, Lcom/google/android/gms/R$string;->cast_stop:I

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxu;->zzatY:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzxu;->zzatR:Landroid/view/View;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/zzxu;->zzatS:Z

    new-instance p1, Lcom/google/android/gms/internal/zzxu$1;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzxu$1;-><init>(Lcom/google/android/gms/internal/zzxu;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxu;->zzatA:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzxu;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzxu;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object p0

    return-object p0
.end method

.method private zza(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxu;->zzatC:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzxu;->zzatC:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzxu;->zzatC:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzxu;->zzatC:Landroid/widget/ImageView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzxu;->zzatR:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzxu;->zzatR:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private zzao(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxu;->zzatR:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxu;->zzatR:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxu;->zzatC:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzxu;->zzatS:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxu;->zzatC:Landroid/widget/ImageView;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method private zztW()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzxu;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxu;->zzatT:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxu;->zzatU:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzxu;->zza(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLiveStream()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxu;->zzatX:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxu;->zzatY:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxu;->zzatV:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxu;->zzatW:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isBuffering()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzxu;->zzao(Z)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isLoadingNextItem()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public onMediaStatusUpdated()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzxu;->zztW()V

    return-void
.end method

.method public onSendingRemoteMediaRequest()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzxu;->zzao(Z)V

    return-void
.end method

.method public onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzxu;->zzatC:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxu;->zzatA:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzxu;->zztW()V

    return-void
.end method

.method public onSessionEnded()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxu;->zzatC:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-super {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionEnded()V

    return-void
.end method
