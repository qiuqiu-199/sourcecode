.class public Lcom/google/android/gms/internal/zzbrq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbrq$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/gms/internal/zzbrq;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final zzciS:Lcom/google/android/gms/internal/zzbrq;

.field private static final zzciT:Lcom/google/android/gms/internal/zzbrq;

.field private static final zzciU:Lcom/google/android/gms/internal/zzbrq;

.field private static final zzciV:Lcom/google/android/gms/internal/zzbrq;


# instance fields
.field private final zzaB:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbrq;

    const-string v1, "[MIN_KEY]"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbrq;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbrq;->zzciS:Lcom/google/android/gms/internal/zzbrq;

    new-instance v0, Lcom/google/android/gms/internal/zzbrq;

    const-string v1, "[MAX_KEY]"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbrq;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbrq;->zzciT:Lcom/google/android/gms/internal/zzbrq;

    new-instance v0, Lcom/google/android/gms/internal/zzbrq;

    const-string v1, ".priority"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbrq;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbrq;->zzciU:Lcom/google/android/gms/internal/zzbrq;

    new-instance v0, Lcom/google/android/gms/internal/zzbrq;

    const-string v1, ".info"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbrq;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbrq;->zzciV:Lcom/google/android/gms/internal/zzbrq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbrq;->zzaB:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzbrq$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbrq;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzaaG()Lcom/google/android/gms/internal/zzbrq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbrq;->zzciS:Lcom/google/android/gms/internal/zzbrq;

    return-object v0
.end method

.method public static zzaaH()Lcom/google/android/gms/internal/zzbrq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbrq;->zzciT:Lcom/google/android/gms/internal/zzbrq;

    return-object v0
.end method

.method public static zzaaI()Lcom/google/android/gms/internal/zzbrq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbrq;->zzciU:Lcom/google/android/gms/internal/zzbrq;

    return-object v0
.end method

.method public static zzaaJ()Lcom/google/android/gms/internal/zzbrq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbrq;->zzciV:Lcom/google/android/gms/internal/zzbrq;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzbrq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzbrq;->zzaB:Ljava/lang/String;

    return-object p0
.end method

.method public static zzja(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrq;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbte;->zzjj(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzbrq$zza;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzbrq$zza;-><init>(Ljava/lang/String;I)V

    return-object v1

    :cond_0
    const-string v0, ".priority"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/zzbrq;->zzciU:Lcom/google/android/gms/internal/zzbrq;

    return-object p0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzbrq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbrq;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public asString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrq;->zzaB:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzbrq;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbrq;->zzi(Lcom/google/android/gms/internal/zzbrq;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/zzbrq;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzbrq;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrq;->zzaB:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbrq;->zzaB:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrq;->zzaB:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected intValue()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrq;->zzaB:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ChildKey(\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzaaK()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbrq;->zzciU:Lcom/google/android/gms/internal/zzbrq;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected zzaaL()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zzi(Lcom/google/android/gms/internal/zzbrq;)I
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzbrq;->zzciS:Lcom/google/android/gms/internal/zzbrq;

    const/4 v1, -0x1

    if-eq p0, v0, :cond_8

    sget-object v0, Lcom/google/android/gms/internal/zzbrq;->zzciT:Lcom/google/android/gms/internal/zzbrq;

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzbrq;->zzciS:Lcom/google/android/gms/internal/zzbrq;

    const/4 v2, 0x1

    if-eq p1, v0, :cond_7

    sget-object v0, Lcom/google/android/gms/internal/zzbrq;->zzciT:Lcom/google/android/gms/internal/zzbrq;

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrq;->zzaaL()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrq;->zzaaL()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbrq;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrq;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbte;->zzH(II)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrq;->zzaB:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbrq;->zzaB:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzbte;->zzH(II)I

    move-result v0

    :cond_3
    return v0

    :cond_4
    return v1

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrq;->zzaaL()Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbrq;->zzaB:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbrq;->zzaB:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_7
    :goto_0
    return v2

    :cond_8
    :goto_1
    return v1
.end method
