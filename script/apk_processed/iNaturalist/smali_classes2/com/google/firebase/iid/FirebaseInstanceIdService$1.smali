.class Lcom/google/firebase/iid/FirebaseInstanceIdService$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzd(Landroid/content/Intent;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzclr:I

.field final synthetic zzcls:Lcom/google/firebase/iid/FirebaseInstanceIdService;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceIdService;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceIdService$1;->zzcls:Lcom/google/firebase/iid/FirebaseInstanceIdService;

    iput p2, p0, Lcom/google/firebase/iid/FirebaseInstanceIdService$1;->zzclr:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {p1}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzcu(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceIdService$1;->zzcls:Lcom/google/firebase/iid/FirebaseInstanceIdService;

    invoke-static {p2}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zza(Lcom/google/firebase/iid/FirebaseInstanceIdService;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "FirebaseInstanceId"

    const-string v0, "connectivity changed. starting background sync."

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceIdService$1;->zzcls:Lcom/google/firebase/iid/FirebaseInstanceIdService;

    invoke-virtual {p2}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lcom/google/firebase/iid/zzg;->zzabU()Lcom/google/firebase/iid/zzg;

    move-result-object p2

    iget v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdService$1;->zzclr:I

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->zzqH(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/google/firebase/iid/zzg;->zzf(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
