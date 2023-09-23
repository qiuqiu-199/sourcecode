.class Lcom/google/android/gms/internal/zzbpj$23;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbos;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpj;->zzb(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcdL:Lcom/google/android/gms/internal/zzbph;

.field final synthetic zzceE:Lcom/google/android/gms/internal/zzbpj;

.field final synthetic zzceH:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

.field final synthetic zzcfc:Lcom/google/android/gms/internal/zzbsc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpj$23;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpj$23;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpj$23;->zzcfc:Lcom/google/android/gms/internal/zzbsc;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbpj$23;->zzceH:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbpj;->zzat(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbpj$23;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    const-string v0, "onDisconnect().setValue"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj$23;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    invoke-static {p2, v0, v1, p1}, Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/android/gms/internal/zzbpj;Ljava/lang/String;Lcom/google/android/gms/internal/zzbph;Lcom/google/firebase/database/DatabaseError;)V

    if-nez p1, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbpj$23;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbpj;->zzf(Lcom/google/android/gms/internal/zzbpj;)Lcom/google/android/gms/internal/zzbpp;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$23;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj$23;->zzcfc:Lcom/google/android/gms/internal/zzbsc;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/zzbpp;->zzh(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzbpj$23;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$23;->zzceH:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj$23;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {p2, v0, p1, v1}, Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/firebase/database/DatabaseReference$CompletionListener;Lcom/google/firebase/database/DatabaseError;Lcom/google/android/gms/internal/zzbph;)V

    return-void
.end method
