.class Lcom/google/android/gms/internal/zzxl$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzxl;-><init>(Landroid/view/View;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzatB:Lcom/google/android/gms/internal/zzxl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzxl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxl$1;->zzatB:Lcom/google/android/gms/internal/zzxl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/internal/zzxl$1;->zzatB:Lcom/google/android/gms/internal/zzxl;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzxl;->zza(Lcom/google/android/gms/internal/zzxl;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxl$1;->zzatB:Lcom/google/android/gms/internal/zzxl;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzxl;->zzb(Lcom/google/android/gms/internal/zzxl;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    instance-of v1, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_3

    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v2, "TRACKS_CHOOSER_DIALOG_TAG"

    invoke-virtual {p1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getActiveTrackIds()[J

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->newInstance(Lcom/google/android/gms/cast/MediaInfo;[J)Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "TRACKS_CHOOSER_DIALOG_TAG"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
