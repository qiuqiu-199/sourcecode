.class final Lcom/google/android/gms/internal/zzaat$zza;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzaBY:Lcom/google/android/gms/internal/zzaat;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaat;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaat$zza;->zzaBY:Lcom/google/android/gms/internal/zzaat;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "GoogleApiClientImpl"

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown message id: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzaat$zza;->zzaBY:Lcom/google/android/gms/internal/zzaat;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaat;->zza(Lcom/google/android/gms/internal/zzaat;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzaat$zza;->zzaBY:Lcom/google/android/gms/internal/zzaat;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaat;->zzb(Lcom/google/android/gms/internal/zzaat;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
