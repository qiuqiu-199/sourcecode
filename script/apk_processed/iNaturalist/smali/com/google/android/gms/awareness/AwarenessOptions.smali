.class public Lcom/google/android/gms/awareness/AwarenessOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# static fields
.field public static final NO_UID:I = -0x1


# instance fields
.field private final zzahh:Landroid/accounts/Account;

.field private final zzalV:Ljava/lang/String;

.field private final zzalW:I

.field private final zzalX:Ljava/lang/String;

.field private final zzalY:Ljava/lang/String;

.field private final zzalZ:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILandroid/accounts/Account;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "moduleId must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzalV:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzalW:I

    iput-object p3, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzalX:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzalY:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzalZ:I

    iput-object p6, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzahh:Landroid/accounts/Account;

    return-void
.end method

.method public static create1p(Ljava/lang/String;)Lcom/google/android/gms/awareness/AwarenessOptions;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    new-instance v7, Lcom/google/android/gms/awareness/AwarenessOptions;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/awareness/AwarenessOptions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILandroid/accounts/Account;)V

    return-object v7
.end method

.method public static create1p(Ljava/lang/String;Landroid/accounts/Account;)Lcom/google/android/gms/awareness/AwarenessOptions;
    .locals 8

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    new-instance v7, Lcom/google/android/gms/awareness/AwarenessOptions;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/awareness/AwarenessOptions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILandroid/accounts/Account;)V

    return-object v7
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/google/android/gms/awareness/AwarenessOptions;

    iget v2, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzalW:I

    iget v3, p1, Lcom/google/android/gms/awareness/AwarenessOptions;->zzalW:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzalZ:I

    iget v3, p1, Lcom/google/android/gms/awareness/AwarenessOptions;->zzalZ:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzalV:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/awareness/AwarenessOptions;->zzalV:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzalX:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/awareness/AwarenessOptions;->zzalX:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzalY:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/awareness/AwarenessOptions;->zzalY:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzahh:Landroid/accounts/Account;

    iget-object p1, p1, Lcom/google/android/gms/awareness/AwarenessOptions;->zzahh:Landroid/accounts/Account;

    invoke-static {v2, p1}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzahh:Landroid/accounts/Account;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzalV:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzalW:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzalX:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzalY:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzalZ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzahh:Landroid/accounts/Account;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public zzrE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzalV:Ljava/lang/String;

    return-object v0
.end method

.method public zzrF()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzalW:I

    return v0
.end method

.method public zzrG()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzalX:Ljava/lang/String;

    return-object v0
.end method

.method public zzrH()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzalY:Ljava/lang/String;

    return-object v0
.end method

.method public zzrI()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->zzalZ:I

    return v0
.end method
