.class Lcom/google/android/gms/tagmanager/zzdc$zzb$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/zzdc$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbIo:Lcom/google/android/gms/tagmanager/zzdc$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzdc$zzb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzdc$zzb$1;->zzbIo:Lcom/google/android/gms/tagmanager/zzdc$zzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdc;->zzRC()Ljava/lang/Object;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzdc$zzb$1;->zzbIo:Lcom/google/android/gms/tagmanager/zzdc$zzb;

    iget-object p1, p1, Lcom/google/android/gms/tagmanager/zzdc$zzb;->zzbIn:Lcom/google/android/gms/tagmanager/zzdc;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzdc;->dispatch()V

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzdc$zzb$1;->zzbIo:Lcom/google/android/gms/tagmanager/zzdc$zzb;

    iget-object p1, p1, Lcom/google/android/gms/tagmanager/zzdc$zzb;->zzbIn:Lcom/google/android/gms/tagmanager/zzdc;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzdc;->zzb(Lcom/google/android/gms/tagmanager/zzdc;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzdc$zzb$1;->zzbIo:Lcom/google/android/gms/tagmanager/zzdc$zzb;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc$zzb$1;->zzbIo:Lcom/google/android/gms/tagmanager/zzdc$zzb;

    iget-object v0, v0, Lcom/google/android/gms/tagmanager/zzdc$zzb;->zzbIn:Lcom/google/android/gms/tagmanager/zzdc;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdc;->zzc(Lcom/google/android/gms/tagmanager/zzdc;)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/tagmanager/zzdc$zzb;->zzy(J)V

    :cond_0
    return v1
.end method
