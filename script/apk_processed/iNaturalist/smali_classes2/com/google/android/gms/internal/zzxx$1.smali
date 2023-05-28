.class Lcom/google/android/gms/internal/zzxx$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzxx;-><init>(Landroid/view/View;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzauf:J

.field final synthetic zzaug:Lcom/google/android/gms/internal/zzxx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzxx;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxx$1;->zzaug:Lcom/google/android/gms/internal/zzxx;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzxx$1;->zzauf:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/google/android/gms/internal/zzxx$1;->zzaug:Lcom/google/android/gms/internal/zzxx;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzxx;->zza(Lcom/google/android/gms/internal/zzxx;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getApproximateStreamPosition()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzxx$1;->zzauf:J

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->seek(J)Lcom/google/android/gms/common/api/PendingResult;

    :cond_0
    return-void
.end method
