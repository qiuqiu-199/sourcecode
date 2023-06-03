.class public Lcom/google/android/gms/internal/zzbpj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbop$zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbpj$zza;,
        Lcom/google/android/gms/internal/zzbpj$zzb;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final zzbZX:Lcom/google/android/gms/internal/zzbpk;

.field private final zzcdg:Lcom/google/android/gms/internal/zzbop;

.field private zzceA:Lcom/google/android/gms/internal/zzbpr;

.field private zzceB:Lcom/google/firebase/database/FirebaseDatabase;

.field private zzceC:Z

.field private zzceD:J

.field private final zzcen:Lcom/google/android/gms/internal/zzbta;

.field private zzceo:Lcom/google/android/gms/internal/zzbpo;

.field private zzcep:Lcom/google/android/gms/internal/zzbpp;

.field private zzceq:Lcom/google/android/gms/internal/zzbqs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbqs<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbpj$zza;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzcer:Z

.field private final zzces:Lcom/google/android/gms/internal/zzbra;

.field private final zzcet:Lcom/google/android/gms/internal/zzbpa;

.field private final zzceu:Lcom/google/android/gms/internal/zzbrn;

.field private final zzcev:Lcom/google/android/gms/internal/zzbrn;

.field private final zzcew:Lcom/google/android/gms/internal/zzbrn;

.field public zzcex:J

.field private zzcey:J

.field private zzcez:Lcom/google/android/gms/internal/zzbpr;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzbpk;Lcom/google/android/gms/internal/zzbpa;Lcom/google/firebase/database/FirebaseDatabase;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzbta;

    new-instance v1, Lcom/google/android/gms/internal/zzbsx;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzbsx;-><init>()V

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzbta;-><init>(Lcom/google/android/gms/internal/zzbsw;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcen:Lcom/google/android/gms/internal/zzbta;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcer:Z

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzbpj;->zzcex:J

    const-wide/16 v4, 0x1

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzbpj;->zzcey:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzceC:Z

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzbpj;->zzceD:J

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpj;->zzbZX:Lcom/google/android/gms/internal/zzbpk;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpj;->zzcet:Lcom/google/android/gms/internal/zzbpa;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpj;->zzceB:Lcom/google/firebase/database/FirebaseDatabase;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzbpj;->zzcet:Lcom/google/android/gms/internal/zzbpa;

    const-string v0, "RepoOperation"

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/zzbpa;->zziV(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrn;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpj;->zzceu:Lcom/google/android/gms/internal/zzbrn;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzbpj;->zzcet:Lcom/google/android/gms/internal/zzbpa;

    const-string v0, "Transaction"

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/zzbpa;->zziV(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrn;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpj;->zzcev:Lcom/google/android/gms/internal/zzbrn;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzbpj;->zzcet:Lcom/google/android/gms/internal/zzbpa;

    const-string v0, "DataOperation"

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/zzbpa;->zziV(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrn;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpj;->zzcew:Lcom/google/android/gms/internal/zzbrn;

    new-instance p3, Lcom/google/android/gms/internal/zzbra;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcet:Lcom/google/android/gms/internal/zzbpa;

    invoke-direct {p3, v0}, Lcom/google/android/gms/internal/zzbra;-><init>(Lcom/google/android/gms/internal/zzbpa;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpj;->zzces:Lcom/google/android/gms/internal/zzbra;

    new-instance p3, Lcom/google/android/gms/internal/zzbon;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbpk;->zzcbI:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzbpk;->zzaGP:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/zzbpk;->zzcbJ:Z

    invoke-direct {p3, v0, v1, p1}, Lcom/google/android/gms/internal/zzbon;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p2, p3, p0}, Lcom/google/android/gms/internal/zzbpa;->zza(Lcom/google/android/gms/internal/zzbon;Lcom/google/android/gms/internal/zzbop$zza;)Lcom/google/android/gms/internal/zzbop;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpj;->zzcdg:Lcom/google/android/gms/internal/zzbop;

    new-instance p1, Lcom/google/android/gms/internal/zzbpj$1;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzbpj$1;-><init>(Lcom/google/android/gms/internal/zzbpj;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbpj;->zzs(Ljava/lang/Runnable;)V

    return-void
.end method

.method private zzYX()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcet:Lcom/google/android/gms/internal/zzbpa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpa;->zzYD()Lcom/google/android/gms/internal/zzbow;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbpj$12;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbpj$12;-><init>(Lcom/google/android/gms/internal/zzbpj;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbow;->zza(Lcom/google/android/gms/internal/zzbow$zzb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcdg:Lcom/google/android/gms/internal/zzbop;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbop;->initialize()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcet:Lcom/google/android/gms/internal/zzbpa;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj;->zzbZX:Lcom/google/android/gms/internal/zzbpk;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzbpk;->zzcbI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbpa;->zziW(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbql;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbpo;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzbpo;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbpj;->zzceo:Lcom/google/android/gms/internal/zzbpo;

    new-instance v1, Lcom/google/android/gms/internal/zzbpp;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzbpp;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbpj;->zzcep:Lcom/google/android/gms/internal/zzbpp;

    new-instance v1, Lcom/google/android/gms/internal/zzbqs;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzbqs;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbpj;->zzceq:Lcom/google/android/gms/internal/zzbqs;

    new-instance v1, Lcom/google/android/gms/internal/zzbpr;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpj;->zzcet:Lcom/google/android/gms/internal/zzbpa;

    new-instance v3, Lcom/google/android/gms/internal/zzbqk;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzbqk;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/zzbpj$17;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzbpj$17;-><init>(Lcom/google/android/gms/internal/zzbpj;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzbpr;-><init>(Lcom/google/android/gms/internal/zzbpa;Lcom/google/android/gms/internal/zzbql;Lcom/google/android/gms/internal/zzbpr$zzd;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbpj;->zzcez:Lcom/google/android/gms/internal/zzbpr;

    new-instance v1, Lcom/google/android/gms/internal/zzbpr;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpj;->zzcet:Lcom/google/android/gms/internal/zzbpa;

    new-instance v3, Lcom/google/android/gms/internal/zzbpj$18;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/zzbpj$18;-><init>(Lcom/google/android/gms/internal/zzbpj;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/internal/zzbpr;-><init>(Lcom/google/android/gms/internal/zzbpa;Lcom/google/android/gms/internal/zzbql;Lcom/google/android/gms/internal/zzbpr$zzd;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbpj;->zzceA:Lcom/google/android/gms/internal/zzbpr;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/android/gms/internal/zzbql;)V

    sget-object v0, Lcom/google/android/gms/internal/zzboz;->zzcdQ:Lcom/google/android/gms/internal/zzbrq;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/zzbpj;->zzb(Lcom/google/android/gms/internal/zzbrq;Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/zzboz;->zzcdR:Lcom/google/android/gms/internal/zzbrq;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzbpj;->zzb(Lcom/google/android/gms/internal/zzbrq;Ljava/lang/Object;)V

    return-void
.end method

.method private zzZ(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzbqy;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzces:Lcom/google/android/gms/internal/zzbra;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbra;->zzab(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private zzZb()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcey:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzbpj;->zzcey:J

    return-wide v0
.end method

.method private zzZc()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcen:Lcom/google/android/gms/internal/zzbta;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpn;->zza(Lcom/google/android/gms/internal/zzbsw;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj;->zzcep:Lcom/google/android/gms/internal/zzbpp;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzbpn;->zza(Lcom/google/android/gms/internal/zzbpp;Ljava/util/Map;)Lcom/google/android/gms/internal/zzbpp;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzbpj$4;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/zzbpj$4;-><init>(Lcom/google/android/gms/internal/zzbpj;Ljava/util/List;)V

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzbpp;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbpp$zzb;)V

    new-instance v0, Lcom/google/android/gms/internal/zzbpp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbpp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcep:Lcom/google/android/gms/internal/zzbpp;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzbpj;->zzZ(Ljava/util/List;)V

    return-void
.end method

.method private zzZd()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzceq:Lcom/google/android/gms/internal/zzbqs;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbpj;->zzb(Lcom/google/android/gms/internal/zzbqs;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/android/gms/internal/zzbqs;)V

    return-void
.end method

.method private zzZe()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzceD:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzbpj;->zzceD:J

    return-wide v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;I)Lcom/google/android/gms/internal/zzbph;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzbpj;->zzb(Lcom/google/android/gms/internal/zzbph;I)Lcom/google/android/gms/internal/zzbph;

    move-result-object p0

    return-object p0
.end method

.method private zza(Lcom/google/android/gms/internal/zzbph;Ljava/util/List;)Lcom/google/android/gms/internal/zzbsc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/gms/internal/zzbsc;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzceA:Lcom/google/android/gms/internal/zzbpr;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzbpr;->zzc(Lcom/google/android/gms/internal/zzbph;Ljava/util/List;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbrv;->zzaaZ()Lcom/google/android/gms/internal/zzbrv;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private zza(JLcom/google/android/gms/internal/zzbph;Lcom/google/firebase/database/DatabaseError;)V
    .locals 7

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/google/firebase/database/DatabaseError;->getCode()I

    move-result v0

    const/16 v1, -0x19

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-nez p4, :cond_1

    const/4 p4, 0x1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj;->zzceA:Lcom/google/android/gms/internal/zzbpr;

    xor-int/lit8 v4, p4, 0x1

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/android/gms/internal/zzbpj;->zzcen:Lcom/google/android/gms/internal/zzbta;

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzbpr;->zza(JZZLcom/google/android/gms/internal/zzbsw;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzbpj;->zzo(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbpj;->zzZ(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbpj;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpj;->zzYX()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbpj;JLcom/google/android/gms/internal/zzbph;Lcom/google/firebase/database/DatabaseError;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzbpj;->zza(JLcom/google/android/gms/internal/zzbph;Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbqs;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/android/gms/internal/zzbqs;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbqs;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/android/gms/internal/zzbqs;I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbpj;Ljava/lang/String;Lcom/google/android/gms/internal/zzbph;Lcom/google/firebase/database/DatabaseError;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbpj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbph;Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbpj;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbpj;->zzZ(Ljava/util/List;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbpj;Ljava/util/List;Lcom/google/android/gms/internal/zzbqs;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzbpj;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzbqs;)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzbql;)V
    .locals 13

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzbql;->zzWO()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcen:Lcom/google/android/gms/internal/zzbta;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpn;->zza(Lcom/google/android/gms/internal/zzbsw;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/high16 v1, -0x8000000000000000L

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzbpv;

    new-instance v4, Lcom/google/android/gms/internal/zzbpj$19;

    invoke-direct {v4, p0, v3}, Lcom/google/android/gms/internal/zzbpj$19;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbpv;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbpv;->zzZm()J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-gez v7, :cond_3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbpv;->zzZm()J

    move-result-wide v1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbpv;->zzZm()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/google/android/gms/internal/zzbpj;->zzcey:J

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbpv;->zzZp()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbpj;->zzceu:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbpj;->zzceu:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbpv;->zzZm()J

    move-result-wide v8

    const/16 v10, 0x30

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Restoring overwrite with id "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v8, v7}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v5, p0, Lcom/google/android/gms/internal/zzbpj;->zzcdg:Lcom/google/android/gms/internal/zzbop;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbpv;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzbph;->zzYR()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbpv;->zzZn()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v8

    invoke-interface {v8, v6}, Lcom/google/android/gms/internal/zzbsc;->getValue(Z)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v7, v6, v4}, Lcom/google/android/gms/internal/zzbop;->zza(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbos;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbpv;->zzZn()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/zzbpn;->zza(Lcom/google/android/gms/internal/zzbsc;Ljava/util/Map;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v8

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbpj;->zzceA:Lcom/google/android/gms/internal/zzbpr;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbpv;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v6

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbpv;->zzZn()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v7

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbpv;->zzZm()J

    move-result-wide v9

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbsc;JZZ)Ljava/util/List;

    goto/16 :goto_0

    :cond_1
    iget-object v5, p0, Lcom/google/android/gms/internal/zzbpj;->zzceu:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbpj;->zzceu:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbpv;->zzZm()J

    move-result-wide v8

    const/16 v10, 0x2c

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Restoring merge with id "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v8, v7}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v5, p0, Lcom/google/android/gms/internal/zzbpj;->zzcdg:Lcom/google/android/gms/internal/zzbop;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbpv;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzbph;->zzYR()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbpv;->zzZo()Lcom/google/android/gms/internal/zzboy;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/zzboy;->zzbe(Z)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v5, v7, v6, v4}, Lcom/google/android/gms/internal/zzbop;->zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzbos;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbpv;->zzZo()Lcom/google/android/gms/internal/zzboy;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/zzbpn;->zza(Lcom/google/android/gms/internal/zzboy;Ljava/util/Map;)Lcom/google/android/gms/internal/zzboy;

    move-result-object v8

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbpj;->zzceA:Lcom/google/android/gms/internal/zzbpr;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbpv;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v6

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbpv;->zzZo()Lcom/google/android/gms/internal/zzboy;

    move-result-object v7

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzbpv;->zzZm()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;Lcom/google/android/gms/internal/zzboy;JZ)Ljava/util/List;

    goto/16 :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Write ids were not in order."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzbqs;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbqs<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbpj$zza;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqs;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbpj;->zzc(Lcom/google/android/gms/internal/zzbqs;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzbpj$zza;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbpj$zza;->zzd(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/android/gms/internal/zzbpj$zzb;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/zzbpj$zzb;->zzcfo:Lcom/google/android/gms/internal/zzbpj$zzb;

    if-eq v3, v4, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqs;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzbpj;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzbph;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqs;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/zzbpj$7;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbpj$7;-><init>(Lcom/google/android/gms/internal/zzbpj;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbqs;->zzb(Lcom/google/android/gms/internal/zzbqs$zzb;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzbqs;I)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbqs<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbpj$zza;",
            ">;>;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/zzbqs;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_8

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/16 v6, 0x2d

    const/16 v7, -0x9

    const/16 v8, -0x19

    if-ne v2, v7, :cond_0

    const-string v11, "overriddenBySet"

    invoke-static {v11}, Lcom/google/firebase/database/DatabaseError;->zziD(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v11

    goto :goto_1

    :cond_0
    if-ne v2, v8, :cond_1

    const/4 v11, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "Unknown transaction abort reason: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/zzbte;->zzb(ZLjava/lang/String;)V

    invoke-static {v8}, Lcom/google/firebase/database/DatabaseError;->zzqv(I)Lcom/google/firebase/database/DatabaseError;

    move-result-object v11

    :goto_1
    const/4 v13, 0x0

    const/4 v14, -0x1

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    if-ge v13, v15, :cond_6

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/zzbpj$zza;

    invoke-static {v15}, Lcom/google/android/gms/internal/zzbpj$zza;->zzd(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/android/gms/internal/zzbpj$zzb;

    move-result-object v10

    sget-object v9, Lcom/google/android/gms/internal/zzbpj$zzb;->zzcfr:Lcom/google/android/gms/internal/zzbpj$zzb;

    if-ne v10, v9, :cond_2

    goto :goto_5

    :cond_2
    invoke-static {v15}, Lcom/google/android/gms/internal/zzbpj$zza;->zzd(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/android/gms/internal/zzbpj$zzb;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/internal/zzbpj$zzb;->zzcfp:Lcom/google/android/gms/internal/zzbpj$zzb;

    if-ne v9, v10, :cond_3

    sget-object v9, Lcom/google/android/gms/internal/zzbpj$zzb;->zzcfr:Lcom/google/android/gms/internal/zzbpj$zzb;

    invoke-static {v15, v9}, Lcom/google/android/gms/internal/zzbpj$zza;->zza(Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/android/gms/internal/zzbpj$zzb;)Lcom/google/android/gms/internal/zzbpj$zzb;

    invoke-static {v15, v11}, Lcom/google/android/gms/internal/zzbpj$zza;->zza(Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/firebase/database/DatabaseError;)Lcom/google/firebase/database/DatabaseError;

    move v14, v13

    goto :goto_5

    :cond_3
    new-instance v9, Lcom/google/android/gms/internal/zzbpx;

    invoke-static {v15}, Lcom/google/android/gms/internal/zzbpj$zza;->zzj(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/firebase/database/ValueEventListener;

    move-result-object v10

    invoke-static {v15}, Lcom/google/android/gms/internal/zzbpj$zza;->zzf(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/internal/zzbrc;->zzN(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbrc;

    move-result-object v12

    invoke-direct {v9, v0, v10, v12}, Lcom/google/android/gms/internal/zzbpx;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/zzbrc;)V

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/zzbpj;->zze(Lcom/google/android/gms/internal/zzbpc;)V

    if-ne v2, v7, :cond_4

    iget-object v9, v0, Lcom/google/android/gms/internal/zzbpj;->zzceA:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v15}, Lcom/google/android/gms/internal/zzbpj$zza;->zzc(Lcom/google/android/gms/internal/zzbpj$zza;)J

    move-result-wide v18

    const/16 v20, 0x1

    const/16 v21, 0x0

    iget-object v10, v0, Lcom/google/android/gms/internal/zzbpj;->zzcen:Lcom/google/android/gms/internal/zzbta;

    move-object/from16 v17, v9

    move-object/from16 v22, v10

    invoke-virtual/range {v17 .. v22}, Lcom/google/android/gms/internal/zzbpr;->zza(JZZLcom/google/android/gms/internal/zzbsw;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_4
    if-ne v2, v8, :cond_5

    const/4 v9, 0x1

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Unknown transaction abort reason: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/zzbte;->zzb(ZLjava/lang/String;)V

    :goto_4
    new-instance v9, Lcom/google/android/gms/internal/zzbpj$16;

    invoke-direct {v9, v0, v15, v11}, Lcom/google/android/gms/internal/zzbpj$16;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/firebase/database/DatabaseError;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_6
    const/4 v9, -0x1

    if-ne v14, v9, :cond_7

    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzbqs;->setValue(Ljava/lang/Object;)V

    goto :goto_7

    :cond_7
    const/4 v2, 0x1

    add-int/2addr v14, v2

    const/4 v2, 0x0

    invoke-interface {v3, v2, v14}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    goto :goto_6

    :goto_7
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/zzbpj;->zzZ(Ljava/util/List;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzbpj;->zzq(Ljava/lang/Runnable;)V

    goto :goto_8

    :cond_8
    return-void
.end method

.method private zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbph;Lcom/google/firebase/database/DatabaseError;)V
    .locals 3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/google/firebase/database/DatabaseError;->getCode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p3}, Lcom/google/firebase/database/DatabaseError;->getCode()I

    move-result v0

    const/16 v1, -0x19

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzceu:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbph;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lcom/google/firebase/database/DatabaseError;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xd

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbrn;->warn(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private zza(Ljava/util/List;Lcom/google/android/gms/internal/zzbph;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbpj$zza;",
            ">;",
            "Lcom/google/android/gms/internal/zzbph;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbpj$zza;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbpj$zza;->zzc(Lcom/google/android/gms/internal/zzbpj$zza;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/android/gms/internal/zzbph;Ljava/util/List;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->zzaaM()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzbpj$zza;

    sget-object v4, Lcom/google/android/gms/internal/zzbpj$zzb;->zzcfp:Lcom/google/android/gms/internal/zzbpj$zzb;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/zzbpj$zza;->zza(Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/android/gms/internal/zzbpj$zzb;)Lcom/google/android/gms/internal/zzbpj$zzb;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbpj$zza;->zze(Lcom/google/android/gms/internal/zzbpj$zza;)I

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbpj$zza;->zzf(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/google/android/gms/internal/zzbph;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v4

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbpj$zza;->zzg(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Lcom/google/android/gms/internal/zzbsc;->zzl(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzbsc;->getValue(Z)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpj;->zzZb()J

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpj;->zzcdg:Lcom/google/android/gms/internal/zzbop;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbph;->zzYR()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/zzbpj$8;

    invoke-direct {v4, p0, p2, p1, p0}, Lcom/google/android/gms/internal/zzbpj$8;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;Ljava/util/List;Lcom/google/android/gms/internal/zzbpj;)V

    invoke-interface {v2, v3, v0, v1, v4}, Lcom/google/android/gms/internal/zzbop;->zza(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/zzbos;)V

    return-void
.end method

.method private zza(Ljava/util/List;Lcom/google/android/gms/internal/zzbqs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbpj$zza;",
            ">;",
            "Lcom/google/android/gms/internal/zzbqs<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbpj$zza;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqs;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbpj$13;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzbpj$13;-><init>(Lcom/google/android/gms/internal/zzbpj;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzbqs;->zzb(Lcom/google/android/gms/internal/zzbqs$zzb;)V

    return-void
.end method

.method private static zzas(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/google/firebase/database/DatabaseError;->zzap(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic zzat(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbpj;->zzas(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object p0

    return-object p0
.end method

.method private zzb(Lcom/google/android/gms/internal/zzbph;I)Lcom/google/android/gms/internal/zzbph;
    .locals 6

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbpj;->zzp(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbqs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqs;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj;->zzcev:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj;->zzceu:Lcom/google/android/gms/internal/zzbrn;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2c

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Aborting transactions for path: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Affected: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj;->zzceq:Lcom/google/android/gms/internal/zzbqs;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzbqs;->zzL(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbqs;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/zzbpj$14;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/zzbpj$14;-><init>(Lcom/google/android/gms/internal/zzbpj;I)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzbqs;->zza(Lcom/google/android/gms/internal/zzbqs$zza;)Z

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/android/gms/internal/zzbqs;I)V

    new-instance v1, Lcom/google/android/gms/internal/zzbpj$15;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/zzbpj$15;-><init>(Lcom/google/android/gms/internal/zzbpj;I)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzbqs;->zza(Lcom/google/android/gms/internal/zzbqs$zzb;)V

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbpj;->zzo(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzbpj;)Lcom/google/android/gms/internal/zzbrn;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbpj;->zzceu:Lcom/google/android/gms/internal/zzbrn;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbqs;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbpj;->zzb(Lcom/google/android/gms/internal/zzbqs;)V

    return-void
.end method

.method private zzb(Lcom/google/android/gms/internal/zzbqs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbqs<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbpj$zza;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqs;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzbpj$zza;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbpj$zza;->zzd(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/android/gms/internal/zzbpj$zzb;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/zzbpj$zzb;->zzcfq:Lcom/google/android/gms/internal/zzbpj$zzb;

    if-ne v2, v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbqs;->setValue(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/zzbpj$9;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbpj$9;-><init>(Lcom/google/android/gms/internal/zzbpj;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbqs;->zzb(Lcom/google/android/gms/internal/zzbqs$zzb;)V

    return-void
.end method

.method private zzb(Lcom/google/android/gms/internal/zzbrq;Ljava/lang/Object;)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/zzboz;->zzcdP:Lcom/google/android/gms/internal/zzbrq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbrq;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcen:Lcom/google/android/gms/internal/zzbta;

    move-object v1, p2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbta;->zzaS(J)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbph;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/zzbrq;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/internal/zzboz;->zzcdO:Lcom/google/android/gms/internal/zzbrq;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbph;-><init>([Lcom/google/android/gms/internal/zzbrq;)V

    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/internal/zzbsd;->zzat(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbpj;->zzceo:Lcom/google/android/gms/internal/zzbpo;

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzbpo;->zzg(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbpj;->zzcez:Lcom/google/android/gms/internal/zzbpr;

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzbpr;->zzi(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbpj;->zzZ(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/google/firebase/database/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbpj;->zzceu:Lcom/google/android/gms/internal/zzbrn;

    const-string v0, "Failed to parse info update"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzbrn;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private zzb(Ljava/util/List;Lcom/google/android/gms/internal/zzbph;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbpj$zza;",
            ">;",
            "Lcom/google/android/gms/internal/zzbph;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzbpj$zza;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbpj$zza;->zzc(Lcom/google/android/gms/internal/zzbpj$zza;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/zzbpj$zza;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzbpj$zza;->zzf(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    move-object/from16 v7, p2

    invoke-static {v7, v0}, Lcom/google/android/gms/internal/zzbph;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v6}, Lcom/google/android/gms/internal/zzbpj$zza;->zzd(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/android/gms/internal/zzbpj$zzb;

    move-result-object v0

    sget-object v9, Lcom/google/android/gms/internal/zzbpj$zzb;->zzcfs:Lcom/google/android/gms/internal/zzbpj$zzb;

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v0, v9, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/internal/zzbpj$zza;->zzk(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/firebase/database/DatabaseError;->getCode()I

    move-result v0

    const/16 v5, -0x19

    if-eq v0, v5, :cond_7

    goto :goto_2

    :cond_3
    invoke-static {v6}, Lcom/google/android/gms/internal/zzbpj$zza;->zzd(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/android/gms/internal/zzbpj$zzb;

    move-result-object v0

    sget-object v9, Lcom/google/android/gms/internal/zzbpj$zzb;->zzcfo:Lcom/google/android/gms/internal/zzbpj$zzb;

    if-ne v0, v9, :cond_6

    invoke-static {v6}, Lcom/google/android/gms/internal/zzbpj$zza;->zzl(Lcom/google/android/gms/internal/zzbpj$zza;)I

    move-result v0

    const/16 v9, 0x19

    if-lt v0, v9, :cond_4

    const-string v0, "maxretries"

    invoke-static {v0}, Lcom/google/firebase/database/DatabaseError;->zziD(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v10

    :goto_2
    iget-object v12, v1, Lcom/google/android/gms/internal/zzbpj;->zzceA:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzbpj$zza;->zzc(Lcom/google/android/gms/internal/zzbpj$zza;)J

    move-result-wide v13

    const/4 v15, 0x1

    const/16 v16, 0x0

    iget-object v0, v1, Lcom/google/android/gms/internal/zzbpj;->zzcen:Lcom/google/android/gms/internal/zzbta;

    move-object/from16 v17, v0

    invoke-virtual/range {v12 .. v17}, Lcom/google/android/gms/internal/zzbpr;->zza(JZZLcom/google/android/gms/internal/zzbsw;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    :cond_4
    invoke-static {v6}, Lcom/google/android/gms/internal/zzbpj$zza;->zzf(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/android/gms/internal/zzbph;Ljava/util/List;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/zzbpj$zza;->zza(Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    invoke-static {v0}, Lcom/google/firebase/database/zza;->zza(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/firebase/database/MutableData;

    move-result-object v0

    :try_start_0
    invoke-static {v6}, Lcom/google/android/gms/internal/zzbpj$zza;->zzi(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/firebase/database/Transaction$Handler;

    move-result-object v9

    invoke-interface {v9, v0}, Lcom/google/firebase/database/Transaction$Handler;->doTransaction(Lcom/google/firebase/database/MutableData;)Lcom/google/firebase/database/Transaction$Result;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v10

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/firebase/database/DatabaseError;->fromException(Ljava/lang/Throwable;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/database/Transaction;->abort()Lcom/google/firebase/database/Transaction$Result;

    move-result-object v9

    move-object/from16 v20, v9

    move-object v9, v0

    move-object/from16 v0, v20

    :goto_3
    invoke-virtual {v0}, Lcom/google/firebase/database/Transaction$Result;->isSuccess()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-static {v6}, Lcom/google/android/gms/internal/zzbpj$zza;->zzc(Lcom/google/android/gms/internal/zzbpj$zza;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-object v11, v1, Lcom/google/android/gms/internal/zzbpj;->zzcen:Lcom/google/android/gms/internal/zzbta;

    invoke-static {v11}, Lcom/google/android/gms/internal/zzbpn;->zza(Lcom/google/android/gms/internal/zzbsw;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v0}, Lcom/google/firebase/database/Transaction$Result;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v14

    invoke-static {v14, v11}, Lcom/google/android/gms/internal/zzbpn;->zza(Lcom/google/android/gms/internal/zzbsc;Ljava/util/Map;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v15

    invoke-static {v6, v14}, Lcom/google/android/gms/internal/zzbpj$zza;->zzb(Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    invoke-static {v6, v15}, Lcom/google/android/gms/internal/zzbpj$zza;->zzc(Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzbpj;->zzZb()J

    move-result-wide v11

    invoke-static {v6, v11, v12}, Lcom/google/android/gms/internal/zzbpj$zza;->zza(Lcom/google/android/gms/internal/zzbpj$zza;J)J

    invoke-interface {v3, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v12, v1, Lcom/google/android/gms/internal/zzbpj;->zzceA:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzbpj$zza;->zzf(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v13

    invoke-static {v6}, Lcom/google/android/gms/internal/zzbpj$zza;->zzc(Lcom/google/android/gms/internal/zzbpj$zza;)J

    move-result-wide v16

    invoke-static {v6}, Lcom/google/android/gms/internal/zzbpj$zza;->zzm(Lcom/google/android/gms/internal/zzbpj$zza;)Z

    move-result v18

    const/16 v19, 0x0

    invoke-virtual/range {v12 .. v19}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbsc;JZZ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v11, v1, Lcom/google/android/gms/internal/zzbpj;->zzceA:Lcom/google/android/gms/internal/zzbpr;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const/4 v14, 0x1

    const/4 v15, 0x0

    iget-object v0, v1, Lcom/google/android/gms/internal/zzbpj;->zzcen:Lcom/google/android/gms/internal/zzbta;

    move-object/from16 v16, v0

    invoke-virtual/range {v11 .. v16}, Lcom/google/android/gms/internal/zzbpr;->zza(JZZLcom/google/android/gms/internal/zzbsw;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_5
    iget-object v12, v1, Lcom/google/android/gms/internal/zzbpj;->zzceA:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzbpj$zza;->zzc(Lcom/google/android/gms/internal/zzbpj$zza;)J

    move-result-wide v13

    const/4 v15, 0x1

    const/16 v16, 0x0

    iget-object v0, v1, Lcom/google/android/gms/internal/zzbpj;->zzcen:Lcom/google/android/gms/internal/zzbta;

    move-object/from16 v17, v0

    invoke-virtual/range {v12 .. v17}, Lcom/google/android/gms/internal/zzbpr;->zza(JZZLcom/google/android/gms/internal/zzbsw;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v10, v9

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v11, 0x0

    :cond_7
    :goto_5
    invoke-direct {v1, v8}, Lcom/google/android/gms/internal/zzbpj;->zzZ(Ljava/util/List;)V

    if-eqz v11, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/zzbpj$zzb;->zzcfq:Lcom/google/android/gms/internal/zzbpj$zzb;

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/zzbpj$zza;->zza(Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/android/gms/internal/zzbpj$zzb;)Lcom/google/android/gms/internal/zzbpj$zzb;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzbpj$zza;->zzf(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/firebase/database/zza;->zza(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    invoke-static {v6}, Lcom/google/android/gms/internal/zzbpj$zza;->zzb(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/zzbrx;->zzn(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/google/firebase/database/zza;->zza(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/zzbrx;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/internal/zzbpj$10;

    invoke-direct {v5, v1, v6}, Lcom/google/android/gms/internal/zzbpj$10;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbpj$zza;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/zzbpj;->zzs(Ljava/lang/Runnable;)V

    new-instance v5, Lcom/google/android/gms/internal/zzbpj$11;

    invoke-direct {v5, v1, v6, v10, v0}, Lcom/google/android/gms/internal/zzbpj$11;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/DataSnapshot;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    iget-object v0, v1, Lcom/google/android/gms/internal/zzbpj;->zzceq:Lcom/google/android/gms/internal/zzbqs;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbpj;->zzb(Lcom/google/android/gms/internal/zzbqs;)V

    :goto_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_9

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzbpj;->zzq(Ljava/lang/Runnable;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzbpj;->zzZd()V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzbpj;)Lcom/google/android/gms/internal/zzbop;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcdg:Lcom/google/android/gms/internal/zzbop;

    return-object p0
.end method

.method private zzc(Lcom/google/android/gms/internal/zzbqs;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbqs<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbpj$zza;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbpj$zza;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzbpj;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzbqs;)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzbpj;)Lcom/google/android/gms/internal/zzbpo;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbpj;->zzceo:Lcom/google/android/gms/internal/zzbpo;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzbpj;)Lcom/google/android/gms/internal/zzbpr;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcez:Lcom/google/android/gms/internal/zzbpr;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzbpj;)Lcom/google/android/gms/internal/zzbpp;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcep:Lcom/google/android/gms/internal/zzbpp;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzbpj;)Lcom/google/android/gms/internal/zzbpr;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbpj;->zzceA:Lcom/google/android/gms/internal/zzbpr;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzbpj;)Lcom/google/android/gms/internal/zzbta;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcen:Lcom/google/android/gms/internal/zzbta;

    return-object p0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzbpj;)Lcom/google/android/gms/internal/zzbqs;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbpj;->zzceq:Lcom/google/android/gms/internal/zzbqs;

    return-object p0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzbpj;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpj;->zzZd()V

    return-void
.end method

.method private zzn(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/android/gms/internal/zzbph;Ljava/util/List;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p1

    return-object p1
.end method

.method private zzo(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbpj;->zzp(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbqs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqs;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbpj;->zzc(Lcom/google/android/gms/internal/zzbqs;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzbpj;->zzb(Ljava/util/List;Lcom/google/android/gms/internal/zzbph;)V

    return-object v0
.end method

.method private zzp(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbqs;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            ")",
            "Lcom/google/android/gms/internal/zzbqs<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbpj$zza;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzceq:Lcom/google/android/gms/internal/zzbqs;

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqs;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzbph;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/internal/zzbrq;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzbph;-><init>([Lcom/google/android/gms/internal/zzbrq;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbqs;->zzL(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbqs;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zzYT()Lcom/google/android/gms/internal/zzbph;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getDatabase()Lcom/google/firebase/database/FirebaseDatabase;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzceB:Lcom/google/firebase/database/FirebaseDatabase;

    return-object v0
.end method

.method interrupt()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcdg:Lcom/google/android/gms/internal/zzbop;

    const-string v1, "repo_interrupt"

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbop;->interrupt(Ljava/lang/String;)V

    return-void
.end method

.method public onDisconnect()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzboz;->zzcdR:Lcom/google/android/gms/internal/zzbrq;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/android/gms/internal/zzbrq;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpj;->zzZc()V

    return-void
.end method

.method public purgeOutstandingWrites()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzceu:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzceu:Lcom/google/android/gms/internal/zzbrn;

    const-string v1, "Purging writes"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzceA:Lcom/google/android/gms/internal/zzbpr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpr;->zzZj()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbpj;->zzZ(Ljava/util/List;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    const/16 v1, -0x19

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzbpj;->zzb(Lcom/google/android/gms/internal/zzbph;I)Lcom/google/android/gms/internal/zzbph;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcdg:Lcom/google/android/gms/internal/zzbop;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbop;->purgeOutstandingWrites()V

    return-void
.end method

.method resume()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcdg:Lcom/google/android/gms/internal/zzbop;

    const-string v1, "repo_interrupt"

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbop;->resume(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzbZX:Lcom/google/android/gms/internal/zzbpk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpk;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzXz()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzboz;->zzcdR:Lcom/google/android/gms/internal/zzbrq;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/android/gms/internal/zzbrq;Ljava/lang/Object;)V

    return-void
.end method

.method public zzYY()Lcom/google/android/gms/internal/zzbpk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzbZX:Lcom/google/android/gms/internal/zzbpk;

    return-object v0
.end method

.method public zzYZ()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcen:Lcom/google/android/gms/internal/zzbta;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbta;->zzabI()J

    move-result-wide v0

    return-wide v0
.end method

.method zzZa()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcez:Lcom/google/android/gms/internal/zzbpr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpr;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzceA:Lcom/google/android/gms/internal/zzbpr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpr;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;Lcom/google/firebase/database/DatabaseReference$CompletionListener;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            "Lcom/google/android/gms/internal/zzboy;",
            "Lcom/google/firebase/database/DatabaseReference$CompletionListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzceu:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzceu:Lcom/google/android/gms/internal/zzbrn;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "update: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcew:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcew:Lcom/google/android/gms/internal/zzbrn;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x9

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "update: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzboy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbpj;->zzceu:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbpj;->zzceu:Lcom/google/android/gms/internal/zzbrn;

    const-string p4, "update called with no changes. No-op"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p4, v0}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/4 p2, 0x0

    invoke-virtual {p0, p3, p2, p1}, Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/firebase/database/DatabaseReference$CompletionListener;Lcom/google/firebase/database/DatabaseError;Lcom/google/android/gms/internal/zzbph;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcen:Lcom/google/android/gms/internal/zzbta;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpn;->zza(Lcom/google/android/gms/internal/zzbsw;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzbpn;->zza(Lcom/google/android/gms/internal/zzboy;Ljava/util/Map;)Lcom/google/android/gms/internal/zzboy;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpj;->zzZb()J

    move-result-wide v8

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj;->zzceA:Lcom/google/android/gms/internal/zzbpr;

    const/4 v7, 0x1

    move-object v2, p1

    move-object v3, p2

    move-wide v5, v8

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzboy;Lcom/google/android/gms/internal/zzboy;JZ)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbpj;->zzZ(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcdg:Lcom/google/android/gms/internal/zzbop;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zzYR()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzbpj$22;

    move-object v5, v2

    move-object v6, p0

    move-object v7, p1

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/zzbpj$22;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;JLcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    invoke-interface {v0, v1, p4, v2}, Lcom/google/android/gms/internal/zzbop;->zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzbos;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzboy;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/zzbph;->zzh(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object p3

    const/16 p4, -0x9

    invoke-direct {p0, p3, p4}, Lcom/google/android/gms/internal/zzbpj;->zzb(Lcom/google/android/gms/internal/zzbph;I)Lcom/google/android/gms/internal/zzbph;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzbpj;->zzo(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    goto :goto_0

    :cond_4
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzceu:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzceu:Lcom/google/android/gms/internal/zzbrn;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "set: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcew:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcew:Lcom/google/android/gms/internal/zzbrn;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "set: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcen:Lcom/google/android/gms/internal/zzbta;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpn;->zza(Lcom/google/android/gms/internal/zzbsw;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzbpn;->zza(Lcom/google/android/gms/internal/zzbsc;Ljava/util/Map;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpj;->zzZb()J

    move-result-wide v9

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj;->zzceA:Lcom/google/android/gms/internal/zzbpr;

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v2, p1

    move-object v3, p2

    move-wide v5, v9

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbsc;JZZ)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbpj;->zzZ(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcdg:Lcom/google/android/gms/internal/zzbop;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zzYR()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/zzbsc;->getValue(Z)Ljava/lang/Object;

    move-result-object p2

    new-instance v2, Lcom/google/android/gms/internal/zzbpj$21;

    move-object v5, v2

    move-object v6, p0

    move-object v7, p1

    move-wide v8, v9

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/zzbpj$21;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;JLcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    invoke-interface {v0, v1, p2, v2}, Lcom/google/android/gms/internal/zzbop;->zza(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbos;)V

    const/16 p2, -0x9

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzbpj;->zzb(Lcom/google/android/gms/internal/zzbph;I)Lcom/google/android/gms/internal/zzbph;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbpj;->zzo(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcdg:Lcom/google/android/gms/internal/zzbop;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zzYR()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzbpj$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/gms/internal/zzbpj$3;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbop;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzbos;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/firebase/database/Transaction$Handler;Z)V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzceu:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzceu:Lcom/google/android/gms/internal/zzbrn;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xd

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "transaction: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcew:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzceu:Lcom/google/android/gms/internal/zzbrn;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xd

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "transaction: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcet:Lcom/google/android/gms/internal/zzbpa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpa;->zzXu()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzceC:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzceC:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcev:Lcom/google/android/gms/internal/zzbrn;

    const-string v1, "runTransaction() usage detected while persistence is enabled. Please be aware that transactions *will not* be persisted across database restarts.  See https://www.firebase.com/docs/android/guide/offline-capabilities.html#section-handling-transactions-offline for more details."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbrn;->info(Ljava/lang/String;)V

    :cond_2
    invoke-static {p0, p1}, Lcom/google/firebase/database/zza;->zza(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    new-instance v4, Lcom/google/android/gms/internal/zzbpj$5;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzbpj$5;-><init>(Lcom/google/android/gms/internal/zzbpj;)V

    new-instance v1, Lcom/google/android/gms/internal/zzbpx;

    invoke-virtual {v0}, Lcom/google/firebase/database/DatabaseReference;->zzWN()Lcom/google/android/gms/internal/zzbrc;

    move-result-object v2

    invoke-direct {v1, p0, v4, v2}, Lcom/google/android/gms/internal/zzbpx;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/zzbrc;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzbpj;->zzf(Lcom/google/android/gms/internal/zzbpc;)V

    new-instance v10, Lcom/google/android/gms/internal/zzbpj$zza;

    sget-object v5, Lcom/google/android/gms/internal/zzbpj$zzb;->zzcfn:Lcom/google/android/gms/internal/zzbpj$zzb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpj;->zzZe()J

    move-result-wide v7

    const/4 v9, 0x0

    move-object v1, v10

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/zzbpj$zza;-><init>(Lcom/google/android/gms/internal/zzbph;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/zzbpj$zzb;ZJLcom/google/android/gms/internal/zzbpj$1;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbpj;->zzn(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/google/android/gms/internal/zzbpj$zza;->zza(Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    invoke-static {v1}, Lcom/google/firebase/database/zza;->zza(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/firebase/database/MutableData;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p2, v1}, Lcom/google/firebase/database/Transaction$Handler;->doTransaction(Lcom/google/firebase/database/MutableData;)Lcom/google/firebase/database/Transaction$Result;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object v3, v2

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "Transaction returned null as result"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/google/firebase/database/DatabaseError;->fromException(Ljava/lang/Throwable;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v1

    invoke-static {}, Lcom/google/firebase/database/Transaction;->abort()Lcom/google/firebase/database/Transaction$Result;

    move-result-object v3

    move-object v11, v3

    move-object v3, v1

    move-object v1, v11

    :goto_0
    invoke-virtual {v1}, Lcom/google/firebase/database/Transaction$Result;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/zzbpj$zza;->zzb(Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/zzbpj$zza;->zzc(Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    invoke-static {v10}, Lcom/google/android/gms/internal/zzbpj$zza;->zzb(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbrx;->zzn(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/firebase/database/zza;->zza(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/zzbrx;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object p1

    new-instance p3, Lcom/google/android/gms/internal/zzbpj$6;

    invoke-direct {p3, p0, p2, v3, p1}, Lcom/google/android/gms/internal/zzbpj$6;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/DataSnapshot;)V

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/zzbpj;->zzq(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    sget-object p2, Lcom/google/android/gms/internal/zzbpj$zzb;->zzcfo:Lcom/google/android/gms/internal/zzbpj$zzb;

    invoke-static {v10, p2}, Lcom/google/android/gms/internal/zzbpj$zza;->zza(Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/android/gms/internal/zzbpj$zzb;)Lcom/google/android/gms/internal/zzbpj$zzb;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbpj;->zzceq:Lcom/google/android/gms/internal/zzbqs;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzbqs;->zzL(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbqs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqs;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzbqs;->setValue(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbpj;->zzcen:Lcom/google/android/gms/internal/zzbta;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbpn;->zza(Lcom/google/android/gms/internal/zzbsw;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v1}, Lcom/google/firebase/database/Transaction$Result;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/google/android/gms/internal/zzbpn;->zza(Lcom/google/android/gms/internal/zzbsc;Ljava/util/Map;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v5

    invoke-static {v10, v4}, Lcom/google/android/gms/internal/zzbpj$zza;->zzb(Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    invoke-static {v10, v5}, Lcom/google/android/gms/internal/zzbpj$zza;->zzc(Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpj;->zzZb()J

    move-result-wide v0

    invoke-static {v10, v0, v1}, Lcom/google/android/gms/internal/zzbpj$zza;->zza(Lcom/google/android/gms/internal/zzbpj$zza;J)J

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpj;->zzceA:Lcom/google/android/gms/internal/zzbpr;

    invoke-static {v10}, Lcom/google/android/gms/internal/zzbpj$zza;->zzc(Lcom/google/android/gms/internal/zzbpj$zza;)J

    move-result-wide v6

    const/4 v9, 0x0

    move-object v3, p1

    move v8, p3

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbsc;JZZ)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbpj;->zzZ(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpj;->zzZd()V

    :goto_1
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/zzbph;",
            "Lcom/google/android/gms/internal/zzbsc;",
            ">;",
            "Lcom/google/firebase/database/DatabaseReference$CompletionListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcdg:Lcom/google/android/gms/internal/zzbop;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zzYR()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzbpj$2;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbpj$2;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    invoke-interface {v0, v1, p4, v2}, Lcom/google/android/gms/internal/zzbop;->zzb(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzbos;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbrc;Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzceA:Lcom/google/android/gms/internal/zzbpr;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbrc;Z)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbrq;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzbpj;->zzb(Lcom/google/android/gms/internal/zzbrq;Ljava/lang/Object;)V

    return-void
.end method

.method zza(Lcom/google/firebase/database/DatabaseReference$CompletionListener;Lcom/google/firebase/database/DatabaseError;Lcom/google/android/gms/internal/zzbph;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzbph;->zzYV()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrq;->zzaaK()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzbph;->zzYU()Lcom/google/android/gms/internal/zzbph;

    move-result-object p3

    :cond_0
    invoke-static {p0, p3}, Lcom/google/firebase/database/zza;->zza(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p3

    new-instance v0, Lcom/google/android/gms/internal/zzbpj$20;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbpj$20;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/firebase/database/DatabaseReference$CompletionListener;Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/DatabaseReference;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbpj;->zzq(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public zza(Ljava/util/List;Ljava/lang/Object;ZLjava/lang/Long;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbph;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbph;-><init>(Ljava/util/List;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbpj;->zzceu:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbpj;->zzceu:Lcom/google/android/gms/internal/zzbrn;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xe

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onDataUpdate: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbpj;->zzcew:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbpj;->zzceu:Lcom/google/android/gms/internal/zzbrn;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xf

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "onDataUpdate: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbpj;->zzcex:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzbpj;->zzcex:J

    if-eqz p4, :cond_4

    :try_start_0
    new-instance p1, Lcom/google/android/gms/internal/zzbps;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p1, v1, v2}, Lcom/google/android/gms/internal/zzbps;-><init>(J)V

    if-eqz p3, :cond_3

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbsd;->zzat(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzbph;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-direct {v2, p4}, Lcom/google/android/gms/internal/zzbph;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/zzbpj;->zzceA:Lcom/google/android/gms/internal/zzbpr;

    invoke-virtual {p2, v0, p3, p1}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbph;Ljava/util/Map;Lcom/google/android/gms/internal/zzbps;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lcom/google/android/gms/internal/zzbsd;->zzat(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/zzbpj;->zzceA:Lcom/google/android/gms/internal/zzbpr;

    invoke-virtual {p3, v0, p2, p1}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/android/gms/internal/zzbps;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_4
    if-eqz p3, :cond_6

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/gms/internal/zzbsd;->zzat(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p4

    new-instance v1, Lcom/google/android/gms/internal/zzbph;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/zzbph;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lcom/google/android/gms/internal/zzbpj;->zzceA:Lcom/google/android/gms/internal/zzbpr;

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbph;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :cond_6
    invoke-static {p2}, Lcom/google/android/gms/internal/zzbsd;->zzat(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbpj;->zzceA:Lcom/google/android/gms/internal/zzbpr;

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzbpr;->zzi(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)Ljava/util/List;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_7

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbpj;->zzo(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    :cond_7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbpj;->zzZ(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/google/firebase/database/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    iget-object p2, p0, Lcom/google/android/gms/internal/zzbpj;->zzceu:Lcom/google/android/gms/internal/zzbrn;

    const-string p3, "FIREBASE INTERNAL ERROR"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/zzbrn;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method public zza(Ljava/util/List;Ljava/util/List;Ljava/lang/Long;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbor;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbph;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbph;-><init>(Ljava/util/List;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbpj;->zzceu:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbpj;->zzceu:Lcom/google/android/gms/internal/zzbrn;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onRangeMergeUpdate: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbpj;->zzcew:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbpj;->zzceu:Lcom/google/android/gms/internal/zzbrn;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x15

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "onRangeMergeUpdate: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzbpj;->zzcex:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzbpj;->zzcex:J

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbor;

    new-instance v2, Lcom/google/android/gms/internal/zzbsh;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/zzbsh;-><init>(Lcom/google/android/gms/internal/zzbor;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbpj;->zzceA:Lcom/google/android/gms/internal/zzbpr;

    new-instance v1, Lcom/google/android/gms/internal/zzbps;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzbps;-><init>(J)V

    invoke-virtual {p2, v0, p1, v1}, Lcom/google/android/gms/internal/zzbpr;->zza(Lcom/google/android/gms/internal/zzbph;Ljava/util/List;Lcom/google/android/gms/internal/zzbps;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/zzbpj;->zzceA:Lcom/google/android/gms/internal/zzbpr;

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzbpr;->zzb(Lcom/google/android/gms/internal/zzbph;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbpj;->zzo(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbpj;->zzZ(Ljava/util/List;)V

    return-void
.end method

.method public zzax(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbrq;->zzja(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrq;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/zzbpj;->zzb(Lcom/google/android/gms/internal/zzbrq;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcdg:Lcom/google/android/gms/internal/zzbop;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbph;->zzYR()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/zzbsc;->getValue(Z)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzbpj$23;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbpj$23;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzbop;->zzb(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbos;)V

    return-void
.end method

.method public zzbc(Z)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzboz;->zzcdQ:Lcom/google/android/gms/internal/zzbrq;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzbpj;->zza(Lcom/google/android/gms/internal/zzbrq;Ljava/lang/Object;)V

    return-void
.end method

.method public zze(Lcom/google/android/gms/internal/zzbpc;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzboz;->zzcdO:Lcom/google/android/gms/internal/zzbrq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbpc;->zzYn()Lcom/google/android/gms/internal/zzbrc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbrq;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcez:Lcom/google/android/gms/internal/zzbpr;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbpr;->zzh(Lcom/google/android/gms/internal/zzbpc;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzceA:Lcom/google/android/gms/internal/zzbpr;

    goto :goto_0

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbpj;->zzZ(Ljava/util/List;)V

    return-void
.end method

.method public zzf(Lcom/google/android/gms/internal/zzbpc;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbpc;->zzYn()Lcom/google/android/gms/internal/zzbrc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzboz;->zzcdO:Lcom/google/android/gms/internal/zzbrq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbrq;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcez:Lcom/google/android/gms/internal/zzbpr;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzceA:Lcom/google/android/gms/internal/zzbpr;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbpr;->zzg(Lcom/google/android/gms/internal/zzbpc;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbpj;->zzZ(Ljava/util/List;)V

    return-void
.end method

.method public zzq(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcet:Lcom/google/android/gms/internal/zzbpa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpa;->zzYu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcet:Lcom/google/android/gms/internal/zzbpa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpa;->zzYA()Lcom/google/android/gms/internal/zzbpe;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbpe;->zzq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzs(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcet:Lcom/google/android/gms/internal/zzbpa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpa;->zzYu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj;->zzcet:Lcom/google/android/gms/internal/zzbpa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbpa;->zzYB()Lcom/google/android/gms/internal/zzbpm;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbpm;->zzs(Ljava/lang/Runnable;)V

    return-void
.end method
