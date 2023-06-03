.class Lcom/google/android/gms/internal/zzxj$3;
.super Landroid/support/v4/media/session/MediaSessionCompat$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzxj;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Lcom/google/android/gms/cast/CastDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzatp:Lcom/google/android/gms/internal/zzxj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzxj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxj$3;->zzatp:Lcom/google/android/gms/internal/zzxj;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/KeyEvent;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x7e

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzxj$3;->zzatp:Lcom/google/android/gms/internal/zzxj;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzxj;->zza(Lcom/google/android/gms/internal/zzxj;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->togglePlayback()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxj$3;->zzatp:Lcom/google/android/gms/internal/zzxj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzxj;->zza(Lcom/google/android/gms/internal/zzxj;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->togglePlayback()V

    return-void
.end method

.method public onPlay()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxj$3;->zzatp:Lcom/google/android/gms/internal/zzxj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzxj;->zza(Lcom/google/android/gms/internal/zzxj;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->togglePlayback()V

    return-void
.end method
