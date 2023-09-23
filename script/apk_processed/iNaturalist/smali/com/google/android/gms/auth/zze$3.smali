.class final Lcom/google/android/gms/auth/zze$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/zze$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/auth/zze;->getAccountChangeEvents(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/auth/zze$zza<",
        "Ljava/util/List<",
        "Lcom/google/android/gms/auth/AccountChangeEvent;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic zzaiF:Ljava/lang/String;

.field final synthetic zzaiG:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/zze$3;->zzaiF:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/auth/zze$3;->zzaiG:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic zzau(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/zze$3;->zzaw(Landroid/os/IBinder;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public zzaw(Landroid/os/IBinder;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/auth/AccountChangeEvent;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcb$zza;->zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzcb;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/auth/AccountChangeEventsRequest;

    invoke-direct {v0}, Lcom/google/android/gms/auth/AccountChangeEventsRequest;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/auth/zze$3;->zzaiF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/auth/AccountChangeEventsRequest;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/auth/zze$3;->zzaiG:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/AccountChangeEventsRequest;->setEventIndex(I)Lcom/google/android/gms/auth/AccountChangeEventsRequest;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzcb;->zza(Lcom/google/android/gms/auth/AccountChangeEventsRequest;)Lcom/google/android/gms/auth/AccountChangeEventsResponse;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/auth/zze;->zzo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/AccountChangeEventsResponse;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/AccountChangeEventsResponse;->getEvents()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
