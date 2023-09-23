.class final Lcom/google/android/gms/auth/zze$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/zze$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/zze;->zzc(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/auth/zze$zza<",
        "Lcom/google/android/gms/auth/TokenData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$options:Landroid/os/Bundle;

.field final synthetic zzaiB:Landroid/accounts/Account;

.field final synthetic zzaiC:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/zze$1;->zzaiB:Landroid/accounts/Account;

    iput-object p2, p0, Lcom/google/android/gms/auth/zze$1;->zzaiC:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/zze$1;->val$options:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzat(Landroid/os/IBinder;)Lcom/google/android/gms/auth/TokenData;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcb$zza;->zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzcb;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/auth/zze$1;->zzaiB:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/google/android/gms/auth/zze$1;->zzaiC:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/auth/zze$1;->val$options:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzcb;->zza(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/auth/zze;->zzo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string/jumbo v0, "tokenDetails"

    invoke-static {p1, v0}, Lcom/google/android/gms/auth/TokenData;->zzd(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/android/gms/auth/TokenData;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "Error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "userRecoveryIntent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzvv;->zzcE(Ljava/lang/String;)Lcom/google/android/gms/internal/zzvv;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzvv;->zza(Lcom/google/android/gms/internal/zzvv;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/google/android/gms/internal/zzvv;->zzb(Lcom/google/android/gms/internal/zzvv;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/auth/GoogleAuthException;

    invoke-direct {p1, v0}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {}, Lcom/google/android/gms/auth/zze;->zzqN()Lcom/google/android/gms/internal/zzacm;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "isUserRecoverableError status: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, "GoogleAuthUtil"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/zzacm;->zzf(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/auth/UserRecoverableAuthException;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    throw v1
.end method

.method public synthetic zzau(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/zze$1;->zzat(Landroid/os/IBinder;)Lcom/google/android/gms/auth/TokenData;

    move-result-object p1

    return-object p1
.end method
