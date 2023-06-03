.class Lcom/google/android/gms/internal/zzbpj$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbos;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpj;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzbph;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcdL:Lcom/google/android/gms/internal/zzbph;

.field final synthetic zzceE:Lcom/google/android/gms/internal/zzbpj;

.field final synthetic zzceL:Ljava/util/List;

.field final synthetic zzceM:Lcom/google/android/gms/internal/zzbpj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;Ljava/util/List;Lcom/google/android/gms/internal/zzbpj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceL:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceM:Lcom/google/android/gms/internal/zzbpj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbpj;->zzat(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    const-string v0, "Transaction"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    invoke-static {p2, v0, v1, p1}, Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/android/gms/internal/zzbpj;Ljava/lang/String;Lcom/google/android/gms/internal/zzbph;Lcom/google/firebase/database/DatabaseError;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbpj$zza;

    sget-object v2, Lcom/google/android/gms/internal/zzbpj$zzb;->zzcfq:Lcom/google/android/gms/internal/zzbpj$zzb;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzbpj$zza;->zza(Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/android/gms/internal/zzbpj$zzb;)Lcom/google/android/gms/internal/zzbpj$zzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbpj;->zzg(Lcom/google/android/gms/internal/zzbpj;)Lcom/google/android/gms/internal/zzbpr;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbpj$zza;->zzc(Lcom/google/android/gms/internal/zzbpj$zza;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbpj;->zzh(Lcom/google/android/gms/internal/zzbpj;)Lcom/google/android/gms/internal/zzbta;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/zzbpr;->zza(JZZLcom/google/android/gms/internal/zzbsw;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbpj$zza;->zzh(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceM:Lcom/google/android/gms/internal/zzbpj;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbpj$zza;->zzf(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/firebase/database/zza;->zza(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v3

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbrx;->zzn(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/firebase/database/zza;->zza(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/zzbrx;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzbpj$8$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/google/android/gms/internal/zzbpj$8$1;-><init>(Lcom/google/android/gms/internal/zzbpj$8;Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/firebase/database/DataSnapshot;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    new-instance v3, Lcom/google/android/gms/internal/zzbpx;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbpj$zza;->zzj(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/firebase/database/ValueEventListener;

    move-result-object v5

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbpj$zza;->zzf(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbrc;->zzN(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object v1

    invoke-direct {v3, v4, v5, v1}, Lcom/google/android/gms/internal/zzbpx;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/zzbrc;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzbpj;->zze(Lcom/google/android/gms/internal/zzbpc;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbpj;->zzi(Lcom/google/android/gms/internal/zzbpj;)Lcom/google/android/gms/internal/zzbqs;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzbqs;->zzL(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbqs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbpj;->zzb(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbqs;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpj;->zzj(Lcom/google/android/gms/internal/zzbpj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceM:Lcom/google/android/gms/internal/zzbpj;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/android/gms/internal/zzbpj;Ljava/util/List;)V

    const/4 p2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbpj;->zzq(Ljava/lang/Runnable;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->getCode()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceL:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzbpj$zza;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbpj$zza;->zzd(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/android/gms/internal/zzbpj$zzb;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzbpj$zzb;->zzcfr:Lcom/google/android/gms/internal/zzbpj$zzb;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/zzbpj$zzb;->zzcfs:Lcom/google/android/gms/internal/zzbpj$zzb;

    :goto_3
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzbpj$zza;->zza(Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/android/gms/internal/zzbpj$zzb;)Lcom/google/android/gms/internal/zzbpj$zzb;

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/zzbpj$zzb;->zzcfo:Lcom/google/android/gms/internal/zzbpj$zzb;

    goto :goto_3

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceL:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbpj$zza;

    sget-object v1, Lcom/google/android/gms/internal/zzbpj$zzb;->zzcfs:Lcom/google/android/gms/internal/zzbpj$zzb;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbpj$zza;->zza(Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/android/gms/internal/zzbpj$zzb;)Lcom/google/android/gms/internal/zzbpj$zzb;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzbpj$zza;->zza(Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/firebase/database/DatabaseError;)Lcom/google/firebase/database/DatabaseError;

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzceE:Lcom/google/android/gms/internal/zzbpj;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbpj$8;->zzcdL:Lcom/google/android/gms/internal/zzbph;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbpj;->zzb(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    :cond_5
    return-void
.end method
