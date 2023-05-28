.class public Lcom/google/android/gms/internal/zzxw;
.super Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;

# interfaces
.implements Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;


# instance fields
.field private final zzatM:Landroid/widget/SeekBar;

.field private zzato:Z

.field private final zzaub:J

.field private final zzauc:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar;JLandroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzxw;->zzato:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxw;->zzatM:Landroid/widget/SeekBar;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzxw;->zzaub:J

    new-instance p1, Lcom/google/android/gms/internal/zzxw$1;

    invoke-direct {p1, p0, p4}, Lcom/google/android/gms/internal/zzxw$1;-><init>(Lcom/google/android/gms/internal/zzxw;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxw;->zzauc:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzxw;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzxw;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onProgressUpdated(JJ)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzxw;->zzua()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxw;->zzatM:Landroid/widget/SeekBar;

    long-to-int p3, p3

    invoke-virtual {v0, p3}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p3, p0, Lcom/google/android/gms/internal/zzxw;->zzatM:Landroid/widget/SeekBar;

    long-to-int p1, p1

    invoke-virtual {p3, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public onSendingRemoteMediaRequest()V
    .locals 0

    return-void
.end method

.method public onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzxw;->zzatM:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxw;->zzauc:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzxw;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzxw;->zzaub:J

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->addProgressListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;J)Z

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxw;->zzatM:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getStreamDuration()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxw;->zzatM:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getApproximateStreamPosition()J

    move-result-wide v1

    long-to-int p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzxw;->zzatM:Landroid/widget/SeekBar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzxw;->zzatM:Landroid/widget/SeekBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSessionEnded()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzxw;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzxw;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->removeProgressListener(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxw;->zzatM:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxw;->zzatM:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxw;->zzatM:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-super {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionEnded()V

    return-void
.end method

.method public zzap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzxw;->zzato:Z

    return-void
.end method

.method public zzua()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzxw;->zzato:Z

    return v0
.end method
