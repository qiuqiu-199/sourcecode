.class Lcom/google/android/gms/internal/zzxy$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzxy;-><init>(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaui:Lcom/google/android/gms/internal/zzxy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzxy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxy$1;->zzaui:Lcom/google/android/gms/internal/zzxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzxy$1;->zzaui:Lcom/google/android/gms/internal/zzxy;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzxy;->zza(Lcom/google/android/gms/internal/zzxy;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->queueNext(Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    :cond_0
    return-void
.end method
