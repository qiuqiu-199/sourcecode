.class Lcom/google/android/gms/internal/zzvc$1;
.super Lcom/google/android/gms/internal/zzvd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzvc;->request(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzvd<",
        "Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzajM:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzvc;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzvc$1;->zzajM:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzvd;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzvl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/zzvc$1$1;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzvc$1$1;-><init>(Lcom/google/android/gms/internal/zzvc$1;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvc$1;->zzajM:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/zzvl;->zza(Lcom/google/android/gms/internal/zzvk;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)V

    return-void
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzvc$1;->zzj(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;

    move-result-object p1

    return-object p1
.end method

.method protected zzj(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzvb;->zzi(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/internal/zzvb;

    move-result-object p1

    return-object p1
.end method
