.class Lcom/google/android/gms/tagmanager/zzo$zzb;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/zzo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzb"
.end annotation


# instance fields
.field private final zzbFh:Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;

.field final synthetic zzbFi:Lcom/google/android/gms/tagmanager/zzo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tagmanager/zzo;Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzo$zzb;->zzbFi:Lcom/google/android/gms/tagmanager/zzo;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzo$zzb;->zzbFh:Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string p1, "Don\'t know how to handle this message."

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzbo;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzo$zzb;->zzgY(Ljava/lang/String;)V

    return-void
.end method

.method public zzgX(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tagmanager/zzo$zzb;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzo$zzb;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected zzgY(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzo$zzb;->zzbFh:Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzo$zzb;->zzbFi:Lcom/google/android/gms/tagmanager/zzo;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;->onContainerAvailable(Lcom/google/android/gms/tagmanager/ContainerHolder;Ljava/lang/String;)V

    return-void
.end method
