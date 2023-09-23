.class final Lcom/google/android/gms/internal/zzbls$zzh;
.super Lcom/google/android/gms/internal/zzbmd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzh"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbmd<",
        "Lcom/google/firebase/auth/AuthResult;",
        "Lcom/google/android/gms/internal/zzbmz;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbXX:Lcom/google/firebase/auth/EmailAuthCredential;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/EmailAuthCredential;)V
    .locals 1
    .param p1    # Lcom/google/firebase/auth/EmailAuthCredential;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbmd;-><init>(I)V

    const-string v0, "credential cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/EmailAuthCredential;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbls$zzh;->zzbXX:Lcom/google/firebase/auth/EmailAuthCredential;

    return-void
.end method


# virtual methods
.method public dispatch()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzh;->zzbYk:Lcom/google/android/gms/internal/zzblz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbls$zzh;->zzbXX:Lcom/google/firebase/auth/EmailAuthCredential;

    invoke-virtual {v1}, Lcom/google/firebase/auth/EmailAuthCredential;->getEmail()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbls$zzh;->zzbXX:Lcom/google/firebase/auth/EmailAuthCredential;

    invoke-virtual {v2}, Lcom/google/firebase/auth/EmailAuthCredential;->getPassword()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbls$zzh;->zzbYj:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {v3}, Lcom/google/firebase/auth/FirebaseUser;->zzVH()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbls$zzh;->zzbYi:Lcom/google/android/gms/internal/zzbmd$zza;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzblz;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbly;)V

    return-void
.end method

.method public zzVO()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbls$zzh;->zzbXF:Lcom/google/firebase/FirebaseApp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbls$zzh;->zzbYo:Lcom/google/android/gms/internal/zzbmj;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbls;->zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/zzbmj;)Lcom/google/android/gms/internal/zzbnf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbls$zzh;->zzbYl:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/zzbmz;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbls$zzh;->zzbYn:Lcom/google/android/gms/internal/zzbmn;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzbmz;->zza(Lcom/google/android/gms/internal/zzbmn;Lcom/google/firebase/auth/FirebaseUser;)V

    new-instance v1, Lcom/google/android/gms/internal/zzbnc;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbnc;-><init>(Lcom/google/android/gms/internal/zzbnf;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzbls$zzh;->zzae(Ljava/lang/Object;)V

    return-void
.end method
