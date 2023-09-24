.class Lcom/google/android/gms/internal/zzbby$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbby;->zzp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbKa:Lcom/google/android/gms/internal/zzbby;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbby;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbby$1;->zzbKa:Lcom/google/android/gms/internal/zzbby;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbby$1;->zzbKa:Lcom/google/android/gms/internal/zzbby;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbby;->zza(Lcom/google/android/gms/internal/zzbby;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbby$1;->zzbKa:Lcom/google/android/gms/internal/zzbby;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbby;->zza(Lcom/google/android/gms/internal/zzbby;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "Invoke the launch activity for package name: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzbbu;->zzbg(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbby$1;->zzbKa:Lcom/google/android/gms/internal/zzbby;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbby;->zza(Lcom/google/android/gms/internal/zzbby;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_1
    const-string p2, "No launch activity found for package name: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/internal/zzbbu;->zzbh(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
