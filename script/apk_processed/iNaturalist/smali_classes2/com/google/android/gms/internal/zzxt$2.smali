.class Lcom/google/android/gms/internal/zzxt$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzxt;-><init>(Landroid/widget/ImageView;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzatQ:Lcom/google/android/gms/internal/zzxt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzxt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxt$2;->zzatQ:Lcom/google/android/gms/internal/zzxt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/google/android/gms/internal/zzxt$2;->zzatQ:Lcom/google/android/gms/internal/zzxt;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzxt;->zzb(Lcom/google/android/gms/internal/zzxt;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastSession;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastSession;->isMute()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/framework/CastSession;->setMute(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzxt$2;->zzatQ:Lcom/google/android/gms/internal/zzxt;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzxt;->zza(Lcom/google/android/gms/internal/zzxt;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/google/android/gms/cast/framework/CastSession;->setMute(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzxt$2;->zzatQ:Lcom/google/android/gms/internal/zzxt;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzxt;->zza(Lcom/google/android/gms/internal/zzxt;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/google/android/gms/internal/zzxt;->zztZ()Lcom/google/android/gms/internal/zzyz;

    move-result-object v2

    const-string v3, "Unable to call CastSession.setMute(boolean)."

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/zzyz;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
