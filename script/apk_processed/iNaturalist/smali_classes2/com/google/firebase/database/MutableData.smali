.class public Lcom/google/firebase/database/MutableData;
.super Ljava/lang/Object;


# instance fields
.field private final zzcac:Lcom/google/android/gms/internal/zzbpo;

.field private final zzcad:Lcom/google/android/gms/internal/zzbph;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzbpo;Lcom/google/android/gms/internal/zzbph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/MutableData;->zzcac:Lcom/google/android/gms/internal/zzbpo;

    iput-object p2, p0, Lcom/google/firebase/database/MutableData;->zzcad:Lcom/google/android/gms/internal/zzbph;

    iget-object p1, p0, Lcom/google/firebase/database/MutableData;->zzcad:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbpw;->zza(Lcom/google/android/gms/internal/zzbph;Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzbpo;Lcom/google/android/gms/internal/zzbph;Lcom/google/firebase/database/MutableData$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/MutableData;-><init>(Lcom/google/android/gms/internal/zzbpo;Lcom/google/android/gms/internal/zzbph;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzbsc;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbpo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbpo;-><init>(Lcom/google/android/gms/internal/zzbsc;)V

    new-instance p1, Lcom/google/android/gms/internal/zzbph;

    const-string v1, ""

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/zzbph;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/google/firebase/database/MutableData;-><init>(Lcom/google/android/gms/internal/zzbpo;Lcom/google/android/gms/internal/zzbph;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/database/MutableData;)Lcom/google/android/gms/internal/zzbpo;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/database/MutableData;->zzcac:Lcom/google/android/gms/internal/zzbpo;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/firebase/database/MutableData;)Lcom/google/android/gms/internal/zzbph;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/database/MutableData;->zzcad:Lcom/google/android/gms/internal/zzbph;

    return-object p0
.end method


# virtual methods
.method public child(Ljava/lang/String;)Lcom/google/firebase/database/MutableData;
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbtf;->zzjl(Ljava/lang/String;)V

    new-instance v0, Lcom/google/firebase/database/MutableData;

    iget-object v1, p0, Lcom/google/firebase/database/MutableData;->zzcac:Lcom/google/android/gms/internal/zzbpo;

    iget-object v2, p0, Lcom/google/firebase/database/MutableData;->zzcad:Lcom/google/android/gms/internal/zzbph;

    new-instance v3, Lcom/google/android/gms/internal/zzbph;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/zzbph;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzbph;->zzh(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbph;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/database/MutableData;-><init>(Lcom/google/android/gms/internal/zzbpo;Lcom/google/android/gms/internal/zzbph;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/firebase/database/MutableData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzcac:Lcom/google/android/gms/internal/zzbpo;

    check-cast p1, Lcom/google/firebase/database/MutableData;

    iget-object v1, p1, Lcom/google/firebase/database/MutableData;->zzcac:Lcom/google/android/gms/internal/zzbpo;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzcad:Lcom/google/android/gms/internal/zzbph;

    iget-object p1, p1, Lcom/google/firebase/database/MutableData;->zzcad:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbph;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getChildren()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/google/firebase/database/MutableData;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->zzaaN()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzbrx;->zzn(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbrx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrx;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/database/MutableData$2;

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/database/MutableData$2;-><init>(Lcom/google/firebase/database/MutableData;Ljava/util/Iterator;)V

    return-object v1

    :cond_1
    :goto_0
    new-instance v0, Lcom/google/firebase/database/MutableData$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/MutableData$1;-><init>(Lcom/google/firebase/database/MutableData;)V

    return-object v0
.end method

.method public getChildrenCount()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->getChildCount()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzcad:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbph;->zzYV()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzcad:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbph;->zzYV()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrq;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPriority()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->zzaaO()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Lcom/google/firebase/database/GenericTypeIndicator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/database/GenericTypeIndicator<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzbtg;->zza(Ljava/lang/Object;Lcom/google/firebase/database/GenericTypeIndicator;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzbtg;->zza(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasChild(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbph;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzbph;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbsc;->zzO(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzbsc;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public hasChildren()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->zzaaN()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbsc;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setPriority(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzcac:Lcom/google/android/gms/internal/zzbpo;

    iget-object v1, p0, Lcom/google/firebase/database/MutableData;->zzcad:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->zzWI()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbsg;->zzau(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/zzbsc;->zzg(Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzbpo;->zzg(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzcad:Lcom/google/android/gms/internal/zzbph;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzbpw;->zza(Lcom/google/android/gms/internal/zzbph;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbtg;->zzay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbtf;->zzax(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzcac:Lcom/google/android/gms/internal/zzbpo;

    iget-object v1, p0, Lcom/google/firebase/database/MutableData;->zzcad:Lcom/google/android/gms/internal/zzbph;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbsd;->zzat(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzbpo;->zzg(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzcad:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbph;->zzYS()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrq;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<none>"

    :goto_0
    iget-object v1, p0, Lcom/google/firebase/database/MutableData;->zzcac:Lcom/google/android/gms/internal/zzbpo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbpo;->zzZf()Lcom/google/android/gms/internal/zzbsc;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzbsc;->getValue(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "MutableData { key = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", value = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " }"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method zzWI()Lcom/google/android/gms/internal/zzbsc;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/MutableData;->zzcac:Lcom/google/android/gms/internal/zzbpo;

    iget-object v1, p0, Lcom/google/firebase/database/MutableData;->zzcad:Lcom/google/android/gms/internal/zzbph;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbpo;->zzq(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    return-object v0
.end method
