.class Lcom/google/android/gms/internal/zzxo$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzxo;-><init>(Landroid/view/View;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzatK:Lcom/google/android/gms/internal/zzxo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzxo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxo$1;->zzatK:Lcom/google/android/gms/internal/zzxo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzxo$1;->zzatK:Lcom/google/android/gms/internal/zzxo;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzxo;->zza(Lcom/google/android/gms/internal/zzxo;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxo$1;->zzatK:Lcom/google/android/gms/internal/zzxo;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzxo;->zzb(Lcom/google/android/gms/internal/zzxo;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
