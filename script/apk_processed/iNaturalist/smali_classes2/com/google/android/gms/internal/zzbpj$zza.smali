.class Lcom/google/android/gms/internal/zzbpj$zza;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbpj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/gms/internal/zzbpj$zza;",
        ">;"
    }
.end annotation


# instance fields
.field private retryCount:I

.field private zzcag:Lcom/google/android/gms/internal/zzbph;

.field private zzcfd:Lcom/google/firebase/database/Transaction$Handler;

.field private zzcfe:Lcom/google/firebase/database/ValueEventListener;

.field private zzcff:Lcom/google/android/gms/internal/zzbpj$zzb;

.field private zzcfg:J

.field private zzcfh:Z

.field private zzcfi:Lcom/google/firebase/database/DatabaseError;

.field private zzcfj:J

.field private zzcfk:Lcom/google/android/gms/internal/zzbsc;

.field private zzcfl:Lcom/google/android/gms/internal/zzbsc;

.field private zzcfm:Lcom/google/android/gms/internal/zzbsc;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzbph;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/zzbpj$zzb;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpj$zza;->zzcag:Lcom/google/android/gms/internal/zzbph;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpj$zza;->zzcfd:Lcom/google/firebase/database/Transaction$Handler;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpj$zza;->zzcfe:Lcom/google/firebase/database/ValueEventListener;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbpj$zza;->zzcff:Lcom/google/android/gms/internal/zzbpj$zzb;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/zzbpj$zza;->retryCount:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzbpj$zza;->zzcfh:Z

    iput-wide p6, p0, Lcom/google/android/gms/internal/zzbpj$zza;->zzcfg:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpj$zza;->zzcfi:Lcom/google/firebase/database/DatabaseError;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpj$zza;->zzcfk:Lcom/google/android/gms/internal/zzbsc;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpj$zza;->zzcfl:Lcom/google/android/gms/internal/zzbsc;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpj$zza;->zzcfm:Lcom/google/android/gms/internal/zzbsc;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzbph;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/zzbpj$zzb;ZJLcom/google/android/gms/internal/zzbpj$1;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/internal/zzbpj$zza;-><init>(Lcom/google/android/gms/internal/zzbph;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/zzbpj$zzb;ZJ)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbpj$zza;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzbpj$zza;->zzcfj:J

    return-wide p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/android/gms/internal/zzbpj$zzb;)Lcom/google/android/gms/internal/zzbpj$zzb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpj$zza;->zzcff:Lcom/google/android/gms/internal/zzbpj$zzb;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpj$zza;->zzcfk:Lcom/google/android/gms/internal/zzbsc;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/firebase/database/DatabaseError;)Lcom/google/firebase/database/DatabaseError;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpj$zza;->zzcfi:Lcom/google/firebase/database/DatabaseError;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/android/gms/internal/zzbsc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbpj$zza;->zzcfk:Lcom/google/android/gms/internal/zzbsc;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpj$zza;->zzcfl:Lcom/google/android/gms/internal/zzbsc;

    return-object p1
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzbpj$zza;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbpj$zza;->zzcfj:J

    return-wide v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpj$zza;->zzcfm:Lcom/google/android/gms/internal/zzbsc;

    return-object p1
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/android/gms/internal/zzbpj$zzb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbpj$zza;->zzcff:Lcom/google/android/gms/internal/zzbpj$zzb;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzbpj$zza;)I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzbpj$zza;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzbpj$zza;->retryCount:I

    return v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/android/gms/internal/zzbph;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbpj$zza;->zzcag:Lcom/google/android/gms/internal/zzbph;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/android/gms/internal/zzbsc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbpj$zza;->zzcfl:Lcom/google/android/gms/internal/zzbsc;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/android/gms/internal/zzbsc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbpj$zza;->zzcfm:Lcom/google/android/gms/internal/zzbsc;

    return-object p0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/firebase/database/Transaction$Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbpj$zza;->zzcfd:Lcom/google/firebase/database/Transaction$Handler;

    return-object p0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/firebase/database/ValueEventListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbpj$zza;->zzcfe:Lcom/google/firebase/database/ValueEventListener;

    return-object p0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/firebase/database/DatabaseError;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbpj$zza;->zzcfi:Lcom/google/firebase/database/DatabaseError;

    return-object p0
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/zzbpj$zza;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/zzbpj$zza;->retryCount:I

    return p0
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/zzbpj$zza;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/zzbpj$zza;->zzcfh:Z

    return p0
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzbpj$zza;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbpj$zza;->zza(Lcom/google/android/gms/internal/zzbpj$zza;)I

    move-result p1

    return p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzbpj$zza;)I
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbpj$zza;->zzcfg:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/zzbpj$zza;->zzcfg:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbpj$zza;->zzcfg:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/zzbpj$zza;->zzcfg:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
