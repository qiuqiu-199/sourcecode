.class public Lcom/google/android/gms/internal/zzbpx;
.super Lcom/google/android/gms/internal/zzbpc;


# instance fields
.field private final zzbZZ:Lcom/google/android/gms/internal/zzbpj;

.field private final zzcdH:Lcom/google/android/gms/internal/zzbrc;

.field private final zzcgv:Lcom/google/firebase/database/ValueEventListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/zzbrc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpx;->zzbZZ:Lcom/google/android/gms/internal/zzbpj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpx;->zzcgv:Lcom/google/firebase/database/ValueEventListener;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpx;->zzcdH:Lcom/google/android/gms/internal/zzbrc;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/zzbpx;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzbpx;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbpx;->zzcgv:Lcom/google/firebase/database/ValueEventListener;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpx;->zzcgv:Lcom/google/firebase/database/ValueEventListener;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbpx;->zzbZZ:Lcom/google/android/gms/internal/zzbpj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpx;->zzbZZ:Lcom/google/android/gms/internal/zzbpj;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbpx;->zzcdH:Lcom/google/android/gms/internal/zzbrc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpx;->zzcdH:Lcom/google/android/gms/internal/zzbrc;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbrc;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpx;->zzcgv:Lcom/google/firebase/database/ValueEventListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpx;->zzbZZ:Lcom/google/android/gms/internal/zzbpj;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpx;->zzcdH:Lcom/google/android/gms/internal/zzbrc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrc;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ValueEventRegistration"

    return-object v0
.end method

.method public zzYn()Lcom/google/android/gms/internal/zzbrc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpx;->zzcdH:Lcom/google/android/gms/internal/zzbrc;

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbpc;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzbpx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpx;->zzbZZ:Lcom/google/android/gms/internal/zzbpj;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpx;->zzcgv:Lcom/google/firebase/database/ValueEventListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzbpx;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/zzbrc;)V

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbqw;Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbqx;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpx;->zzbZZ:Lcom/google/android/gms/internal/zzbpj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/google/firebase/database/zza;->zza(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqw;->zzZS()Lcom/google/android/gms/internal/zzbrx;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/firebase/database/zza;->zza(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/zzbrx;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/zzbqx;

    sget-object v0, Lcom/google/android/gms/internal/zzbqy$zza;->zzchX:Lcom/google/android/gms/internal/zzbqy$zza;

    const/4 v1, 0x0

    invoke-direct {p2, v0, p0, p1, v1}, Lcom/google/android/gms/internal/zzbqx;-><init>(Lcom/google/android/gms/internal/zzbqy$zza;Lcom/google/android/gms/internal/zzbpc;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    return-object p2
.end method

.method public zza(Lcom/google/android/gms/internal/zzbqx;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpx;->zzYL()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpx;->zzcgv:Lcom/google/firebase/database/ValueEventListener;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqx;->zzZY()Lcom/google/firebase/database/DataSnapshot;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/firebase/database/ValueEventListener;->onDataChange(Lcom/google/firebase/database/DataSnapshot;)V

    return-void
.end method

.method public zza(Lcom/google/firebase/database/DatabaseError;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpx;->zzcgv:Lcom/google/firebase/database/ValueEventListener;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/ValueEventListener;->onCancelled(Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbqy$zza;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbqy$zza;->zzchX:Lcom/google/android/gms/internal/zzbqy$zza;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public zzc(Lcom/google/android/gms/internal/zzbpc;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/zzbpx;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzbpx;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbpx;->zzcgv:Lcom/google/firebase/database/ValueEventListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpx;->zzcgv:Lcom/google/firebase/database/ValueEventListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
