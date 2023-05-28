.class public Lcom/google/firebase/database/Query;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final zzbZZ:Lcom/google/android/gms/internal/zzbpj;

.field protected final zzcag:Lcom/google/android/gms/internal/zzbph;

.field protected final zzcak:Lcom/google/android/gms/internal/zzbrb;

.field private final zzcal:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/Query;->zzbZZ:Lcom/google/android/gms/internal/zzbpj;

    iput-object p2, p0, Lcom/google/firebase/database/Query;->zzcag:Lcom/google/android/gms/internal/zzbph;

    sget-object p1, Lcom/google/android/gms/internal/zzbrb;->zzcie:Lcom/google/android/gms/internal/zzbrb;

    iput-object p1, p0, Lcom/google/firebase/database/Query;->zzcak:Lcom/google/android/gms/internal/zzbrb;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/firebase/database/Query;->zzcal:Z

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbrb;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/Query;->zzbZZ:Lcom/google/android/gms/internal/zzbpj;

    iput-object p2, p0, Lcom/google/firebase/database/Query;->zzcag:Lcom/google/android/gms/internal/zzbph;

    iput-object p3, p0, Lcom/google/firebase/database/Query;->zzcak:Lcom/google/android/gms/internal/zzbrb;

    iput-boolean p4, p0, Lcom/google/firebase/database/Query;->zzcal:Z

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzbrb;->isValid()Z

    move-result p1

    const-string p2, "Validation of queries failed."

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbte;->zzb(ZLjava/lang/String;)V

    return-void
.end method

.method private zzWK()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzcak:Lcom/google/android/gms/internal/zzbrb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrb;->zzaab()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzcak:Lcom/google/android/gms/internal/zzbrb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrb;->zzaae()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call equalTo() and endAt() combined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call equalTo() and startAt() combined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private zzWL()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/firebase/database/Query;->zzcal:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You can\'t combine multiple orderBy calls!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private zza(Lcom/google/android/gms/internal/zzbsc;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 3

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbtf;->zzjp(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzbsc;->zzaaN()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzbsc;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can only use simple values for startAt()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzcak:Lcom/google/android/gms/internal/zzbrb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrb;->zzaab()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbrq;->zzja(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrq;

    move-result-object p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzcak:Lcom/google/android/gms/internal/zzbrb;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzbrb;->zza(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbrb;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/zzbrb;)V

    invoke-direct {p0, p1}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/zzbrb;)V

    new-instance p2, Lcom/google/firebase/database/Query;

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZZ:Lcom/google/android/gms/internal/zzbpj;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzcag:Lcom/google/android/gms/internal/zzbph;

    iget-boolean v2, p0, Lcom/google/firebase/database/Query;->zzcal:Z

    invoke-direct {p2, v0, v1, p1, v2}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbrb;Z)V

    return-object p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t call startAt() or equalTo() multiple times"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private zza(Lcom/google/android/gms/internal/zzbpc;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzbqa;->zzZu()Lcom/google/android/gms/internal/zzbqa;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbqa;->zzk(Lcom/google/android/gms/internal/zzbpc;)V

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZZ:Lcom/google/android/gms/internal/zzbpj;

    new-instance v1, Lcom/google/firebase/database/Query$2;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/Query$2;-><init>(Lcom/google/firebase/database/Query;Lcom/google/android/gms/internal/zzbpc;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbpj;->zzs(Ljava/lang/Runnable;)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzbrb;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrb;->zzaaj()Lcom/google/android/gms/internal/zzbrw;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzbry;->zzabg()Lcom/google/android/gms/internal/zzbry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "You must use startAt(String value), endAt(String value) or equalTo(String value) in combination with orderByKey(). Other type of values or using the version with 2 parameters is not supported"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrb;->zzaab()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrb;->zzaac()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrb;->zzaad()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/zzbrq;->zzaaG()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v3

    if-ne v2, v3, :cond_0

    instance-of v1, v1, Lcom/google/android/gms/internal/zzbsi;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrb;->zzaae()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrb;->zzaaf()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrb;->zzaag()Lcom/google/android/gms/internal/zzbrq;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/zzbrq;->zzaaH()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v2

    if-ne p1, v2, :cond_2

    instance-of p1, v1, Lcom/google/android/gms/internal/zzbsi;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrb;->zzaaj()Lcom/google/android/gms/internal/zzbrw;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzbsf;->zzabk()Lcom/google/android/gms/internal/zzbsf;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrb;->zzaab()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrb;->zzaac()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbsg;->zzq(Lcom/google/android/gms/internal/zzbsc;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrb;->zzaae()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrb;->zzaaf()Lcom/google/android/gms/internal/zzbsc;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbsg;->zzq(Lcom/google/android/gms/internal/zzbsc;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "When using orderByPriority(), values provided to startAt(), endAt(), or equalTo() must be valid priorities."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    return-void
.end method

.method private zzb(Lcom/google/android/gms/internal/zzbsc;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 3

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbtf;->zzjp(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzbsc;->zzaaN()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzbsc;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can only use simple values for endAt()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbrq;->zzja(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrq;

    move-result-object p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzcak:Lcom/google/android/gms/internal/zzbrb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrb;->zzaae()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzcak:Lcom/google/android/gms/internal/zzbrb;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzbrb;->zzb(Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbrb;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/zzbrb;)V

    invoke-direct {p0, p1}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/zzbrb;)V

    new-instance p2, Lcom/google/firebase/database/Query;

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZZ:Lcom/google/android/gms/internal/zzbpj;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzcag:Lcom/google/android/gms/internal/zzbph;

    iget-boolean v2, p0, Lcom/google/firebase/database/Query;->zzcal:Z

    invoke-direct {p2, v0, v1, p1, v2}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbrb;Z)V

    return-object p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t call endAt() or equalTo() multiple times"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private zzb(Lcom/google/android/gms/internal/zzbpc;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzbqa;->zzZu()Lcom/google/android/gms/internal/zzbqa;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbqa;->zzi(Lcom/google/android/gms/internal/zzbpc;)V

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZZ:Lcom/google/android/gms/internal/zzbpj;

    new-instance v1, Lcom/google/firebase/database/Query$3;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/Query$3;-><init>(Lcom/google/firebase/database/Query;Lcom/google/android/gms/internal/zzbpc;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbpj;->zzs(Ljava/lang/Runnable;)V

    return-void
.end method

.method private zzb(Lcom/google/android/gms/internal/zzbrb;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrb;->zzaab()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrb;->zzaae()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrb;->zzaah()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrb;->zzaai()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t combine startAt(), endAt() and limit(). Use limitToFirst() or limitToLast() instead"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addChildEventListener(Lcom/google/firebase/database/ChildEventListener;)Lcom/google/firebase/database/ChildEventListener;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzbox;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbZZ:Lcom/google/android/gms/internal/zzbpj;

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->zzWN()Lcom/google/android/gms/internal/zzbrc;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/zzbox;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/firebase/database/ChildEventListener;Lcom/google/android/gms/internal/zzbrc;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/zzbpc;)V

    return-object p1
.end method

.method public addListenerForSingleValueEvent(Lcom/google/firebase/database/ValueEventListener;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzbpx;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbZZ:Lcom/google/android/gms/internal/zzbpj;

    new-instance v2, Lcom/google/firebase/database/Query$1;

    invoke-direct {v2, p0, p1}, Lcom/google/firebase/database/Query$1;-><init>(Lcom/google/firebase/database/Query;Lcom/google/firebase/database/ValueEventListener;)V

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->zzWN()Lcom/google/android/gms/internal/zzbrc;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzbpx;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/zzbrc;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/zzbpc;)V

    return-void
.end method

.method public addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzbpx;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbZZ:Lcom/google/android/gms/internal/zzbpj;

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->zzWN()Lcom/google/android/gms/internal/zzbrc;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/zzbpx;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/zzbrc;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/zzbpc;)V

    return-object p1
.end method

.method public endAt(D)Lcom/google/firebase/database/Query;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/database/Query;->endAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public endAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbru;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/zzbsg;->zzabl()Lcom/google/android/gms/internal/zzbsc;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzbru;-><init>(Ljava/lang/Double;Lcom/google/android/gms/internal/zzbsc;)V

    invoke-direct {p0, v0, p3}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/zzbsc;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public endAt(Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/Query;->endAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public endAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbsi;

    invoke-static {}, Lcom/google/android/gms/internal/zzbsg;->zzabl()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzbsi;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzbsc;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzbrv;->zzaaZ()Lcom/google/android/gms/internal/zzbrv;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/zzbsc;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public endAt(Z)Lcom/google/firebase/database/Query;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/Query;->endAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public endAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbrp;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/zzbsg;->zzabl()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzbrp;-><init>(Ljava/lang/Boolean;Lcom/google/android/gms/internal/zzbsc;)V

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/zzbsc;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(D)Lcom/google/firebase/database/Query;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzWK()V

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/Query;->startAt(D)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/Query;->endAt(D)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(DLjava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzWK()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/database/Query;->startAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/database/Query;->endAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzWK()V

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/Query;->startAt(Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/Query;->endAt(Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzWK()V

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/Query;->startAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/Query;->endAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(Z)Lcom/google/firebase/database/Query;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzWK()V

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/Query;->startAt(Z)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/Query;->endAt(Z)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(ZLjava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzWK()V

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/Query;->startAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/Query;->endAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public getRef()Lcom/google/firebase/database/DatabaseReference;
    .locals 3

    new-instance v0, Lcom/google/firebase/database/DatabaseReference;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbZZ:Lcom/google/android/gms/internal/zzbpj;

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/DatabaseReference;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;)V

    return-object v0
.end method

.method public keepSynced(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzcag:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzcag:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzbrq;->zzaaJ()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbrq;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/firebase/database/DatabaseException;

    const-string v0, "Can\'t call keepSynced() on .info paths."

    invoke-direct {p1, v0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzbZZ:Lcom/google/android/gms/internal/zzbpj;

    new-instance v1, Lcom/google/firebase/database/Query$4;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/Query$4;-><init>(Lcom/google/firebase/database/Query;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbpj;->zzs(Ljava/lang/Runnable;)V

    return-void
.end method

.method public limitToFirst(I)Lcom/google/firebase/database/Query;
    .locals 4

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzcak:Lcom/google/android/gms/internal/zzbrb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrb;->zzaah()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/firebase/database/Query;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbZZ:Lcom/google/android/gms/internal/zzbpj;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzcag:Lcom/google/android/gms/internal/zzbph;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzcak:Lcom/google/android/gms/internal/zzbrb;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/zzbrb;->zzqB(I)Lcom/google/android/gms/internal/zzbrb;

    move-result-object p1

    iget-boolean v3, p0, Lcom/google/firebase/database/Query;->zzcal:Z

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbrb;Z)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t call limitToLast on query with previously set limit!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Limit must be a positive integer!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public limitToLast(I)Lcom/google/firebase/database/Query;
    .locals 4

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzcak:Lcom/google/android/gms/internal/zzbrb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrb;->zzaah()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/firebase/database/Query;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbZZ:Lcom/google/android/gms/internal/zzbpj;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzcag:Lcom/google/android/gms/internal/zzbph;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzcak:Lcom/google/android/gms/internal/zzbrb;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/zzbrb;->zzqC(I)Lcom/google/android/gms/internal/zzbrb;

    move-result-object p1

    iget-boolean v3, p0, Lcom/google/firebase/database/Query;->zzcal:Z

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbrb;Z)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t call limitToLast on query with previously set limit!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Limit must be a positive integer!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public orderByChild(Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 4

    if-eqz p1, :cond_4

    const-string v0, "$key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ".key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "$priority"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".priority"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "$value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbtf;->zzjl(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzWL()V

    new-instance v0, Lcom/google/android/gms/internal/zzbph;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbph;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbph;->size()I

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzbse;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzbse;-><init>(Lcom/google/android/gms/internal/zzbph;)V

    new-instance v0, Lcom/google/firebase/database/Query;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbZZ:Lcom/google/android/gms/internal/zzbpj;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzcag:Lcom/google/android/gms/internal/zzbph;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzcak:Lcom/google/android/gms/internal/zzbrb;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/zzbrb;->zza(Lcom/google/android/gms/internal/zzbrw;)Lcom/google/android/gms/internal/zzbrb;

    move-result-object p1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbrb;Z)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t use empty path, use orderByValue() instead!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x38

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Can\'t use \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' as path, please use orderByValue() instead!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Can\'t use \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' as path, please use orderByPriority() instead!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x36

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Can\'t use \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' as path, please use orderByKey() instead!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Key can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public orderByKey()Lcom/google/firebase/database/Query;
    .locals 5

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzWL()V

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzcak:Lcom/google/android/gms/internal/zzbrb;

    invoke-static {}, Lcom/google/android/gms/internal/zzbry;->zzabg()Lcom/google/android/gms/internal/zzbry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbrb;->zza(Lcom/google/android/gms/internal/zzbrw;)Lcom/google/android/gms/internal/zzbrb;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/zzbrb;)V

    new-instance v1, Lcom/google/firebase/database/Query;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzbZZ:Lcom/google/android/gms/internal/zzbpj;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzcag:Lcom/google/android/gms/internal/zzbph;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbrb;Z)V

    return-object v1
.end method

.method public orderByPriority()Lcom/google/firebase/database/Query;
    .locals 5

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzWL()V

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzcak:Lcom/google/android/gms/internal/zzbrb;

    invoke-static {}, Lcom/google/android/gms/internal/zzbsf;->zzabk()Lcom/google/android/gms/internal/zzbsf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbrb;->zza(Lcom/google/android/gms/internal/zzbrw;)Lcom/google/android/gms/internal/zzbrb;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/zzbrb;)V

    new-instance v1, Lcom/google/firebase/database/Query;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzbZZ:Lcom/google/android/gms/internal/zzbpj;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzcag:Lcom/google/android/gms/internal/zzbph;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbrb;Z)V

    return-object v1
.end method

.method public orderByValue()Lcom/google/firebase/database/Query;
    .locals 5

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzWL()V

    new-instance v0, Lcom/google/firebase/database/Query;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbZZ:Lcom/google/android/gms/internal/zzbpj;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzcag:Lcom/google/android/gms/internal/zzbph;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzcak:Lcom/google/android/gms/internal/zzbrb;

    invoke-static {}, Lcom/google/android/gms/internal/zzbsj;->zzabm()Lcom/google/android/gms/internal/zzbsj;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzbrb;->zza(Lcom/google/android/gms/internal/zzbrw;)Lcom/google/android/gms/internal/zzbrb;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbrb;Z)V

    return-object v0
.end method

.method public removeEventListener(Lcom/google/firebase/database/ChildEventListener;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbox;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbZZ:Lcom/google/android/gms/internal/zzbpj;

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->zzWN()Lcom/google/android/gms/internal/zzbrc;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/zzbox;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/firebase/database/ChildEventListener;Lcom/google/android/gms/internal/zzbrc;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/zzbpc;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "listener must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeEventListener(Lcom/google/firebase/database/ValueEventListener;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbpx;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzbZZ:Lcom/google/android/gms/internal/zzbpj;

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->zzWN()Lcom/google/android/gms/internal/zzbrc;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/zzbpx;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/zzbrc;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/zzbpc;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "listener must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startAt(D)Lcom/google/firebase/database/Query;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/database/Query;->startAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public startAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbru;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/zzbsg;->zzabl()Lcom/google/android/gms/internal/zzbsc;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzbru;-><init>(Ljava/lang/Double;Lcom/google/android/gms/internal/zzbsc;)V

    invoke-direct {p0, v0, p3}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/zzbsc;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public startAt(Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/Query;->startAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public startAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbsi;

    invoke-static {}, Lcom/google/android/gms/internal/zzbsg;->zzabl()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzbsi;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzbsc;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzbrv;->zzaaZ()Lcom/google/android/gms/internal/zzbrv;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/zzbsc;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public startAt(Z)Lcom/google/firebase/database/Query;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/Query;->startAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public startAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbrp;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/zzbsg;->zzabl()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzbrp;-><init>(Ljava/lang/Boolean;Lcom/google/android/gms/internal/zzbsc;)V

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/zzbsc;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public zzWM()Lcom/google/android/gms/internal/zzbph;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzcag:Lcom/google/android/gms/internal/zzbph;

    return-object v0
.end method

.method public zzWN()Lcom/google/android/gms/internal/zzbrc;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzbrc;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzcag:Lcom/google/android/gms/internal/zzbph;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzcak:Lcom/google/android/gms/internal/zzbrb;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrc;-><init>(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbrb;)V

    return-object v0
.end method
