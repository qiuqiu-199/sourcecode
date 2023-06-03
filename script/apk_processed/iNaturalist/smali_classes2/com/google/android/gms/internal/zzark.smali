.class public Lcom/google/android/gms/internal/zzark;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzark;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbiS:[I


# instance fields
.field private final zzakD:I

.field private final zzbiQ:Ljava/lang/String;

.field private final zzbiR:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x800

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/zzark;->zzbiS:[I

    new-instance v0, Lcom/google/android/gms/internal/zzark$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzark$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzark;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzark;->zzbiQ:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzark;->zzakD:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzark;->zzbiR:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzark;->zzbiQ:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/zzark;->zzakD:I

    iget p2, p0, Lcom/google/android/gms/internal/zzark;->zzakD:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzark;->zzeP(Ljava/lang/String;)[I

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzark;->zzbiR:[I

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method static declared-synchronized zzeP(Ljava/lang/String;)[I
    .locals 14

    const-class v0, Lcom/google/android/gms/internal/zzark;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v4, v1, :cond_16

    const/16 v9, 0x7fd

    if-gt v5, v9, :cond_15

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2e

    const/16 v11, 0x7d

    if-eq v9, v10, :cond_a

    const/16 v10, 0x7b

    if-eq v9, v10, :cond_8

    if-eq v9, v11, :cond_7

    packed-switch v9, :pswitch_data_0

    const/4 v10, -0x2

    const/4 v12, -0x1

    packed-switch v9, :pswitch_data_1

    :goto_1
    move v12, v5

    const/4 v5, 0x1

    goto/16 :goto_4

    :pswitch_0
    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    sget-object v6, Lcom/google/android/gms/internal/zzark;->zzbiS:[I

    add-int/lit8 v8, v5, -0x1

    aget v6, v6, v8

    if-eq v6, v12, :cond_1

    if-eq v6, v10, :cond_1

    sget-object v6, Lcom/google/android/gms/internal/zzark;->zzbiS:[I

    add-int/lit8 v8, v5, 0x1

    const/4 v10, -0x3

    aput v10, v6, v5

    move v12, v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must define characters in a set."

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v1, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Escape found at end of pattern!"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v11, 0x5e

    if-ne v9, v11, :cond_4

    sget-object v4, Lcom/google/android/gms/internal/zzark;->zzbiS:[I

    add-int/lit8 v9, v5, 0x1

    aput v10, v4, v5

    move v4, v6

    goto :goto_2

    :cond_4
    sget-object v6, Lcom/google/android/gms/internal/zzark;->zzbiS:[I

    add-int/lit8 v9, v5, 0x1

    aput v12, v6, v5

    :goto_2
    move v5, v9

    add-int/2addr v4, v3

    const/4 v6, 0x1

    goto :goto_0

    :pswitch_3
    if-nez v6, :cond_b

    if-eqz v5, :cond_5

    sget-object v10, Lcom/google/android/gms/internal/zzark;->zzbiS:[I

    add-int/lit8 v12, v5, -0x1

    aget v10, v10, v12

    invoke-static {v10}, Lcom/google/android/gms/internal/zzark;->zzjU(I)Z

    move-result v10

    if-nez v10, :cond_5

    sget-object v10, Lcom/google/android/gms/internal/zzark;->zzbiS:[I

    add-int/lit8 v12, v5, 0x1

    const/4 v13, -0x8

    aput v13, v10, v5

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Modifier must follow a token."

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4
    if-nez v6, :cond_b

    if-eqz v5, :cond_6

    sget-object v10, Lcom/google/android/gms/internal/zzark;->zzbiS:[I

    add-int/lit8 v12, v5, -0x1

    aget v10, v10, v12

    invoke-static {v10}, Lcom/google/android/gms/internal/zzark;->zzjU(I)Z

    move-result v10

    if-nez v10, :cond_6

    sget-object v10, Lcom/google/android/gms/internal/zzark;->zzbiS:[I

    add-int/lit8 v12, v5, 0x1

    const/4 v13, -0x7

    aput v13, v10, v5

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Modifier must follow a token."

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    if-eqz v7, :cond_b

    sget-object v7, Lcom/google/android/gms/internal/zzark;->zzbiS:[I

    add-int/lit8 v10, v5, 0x1

    const/4 v12, -0x6

    aput v12, v7, v5

    move v12, v10

    const/4 v5, 0x0

    const/4 v7, 0x0

    goto :goto_4

    :cond_8
    if-nez v6, :cond_b

    if-eqz v5, :cond_9

    sget-object v7, Lcom/google/android/gms/internal/zzark;->zzbiS:[I

    add-int/lit8 v10, v5, -0x1

    aget v7, v7, v10

    invoke-static {v7}, Lcom/google/android/gms/internal/zzark;->zzjU(I)Z

    move-result v7

    if-nez v7, :cond_9

    sget-object v7, Lcom/google/android/gms/internal/zzark;->zzbiS:[I

    add-int/lit8 v10, v5, 0x1

    const/4 v12, -0x5

    aput v12, v7, v5

    add-int/lit8 v4, v4, 0x1

    move v12, v10

    const/4 v5, 0x0

    const/4 v7, 0x1

    goto :goto_4

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Modifier must follow a token."

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    if-nez v6, :cond_b

    sget-object v10, Lcom/google/android/gms/internal/zzark;->zzbiS:[I

    add-int/lit8 v12, v5, 0x1

    const/4 v13, -0x4

    aput v13, v10, v5

    goto :goto_3

    :cond_b
    move v12, v5

    :goto_3
    const/4 v5, 0x0

    :goto_4
    if-eqz v6, :cond_e

    if-eqz v8, :cond_c

    sget-object v5, Lcom/google/android/gms/internal/zzark;->zzbiS:[I

    add-int/lit8 v8, v12, 0x1

    aput v9, v5, v12

    move v5, v8

    const/4 v8, 0x0

    goto/16 :goto_7

    :cond_c
    add-int/lit8 v5, v4, 0x2

    if-ge v5, v1, :cond_d

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v13, 0x2d

    if-ne v11, v13, :cond_d

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v11, 0x5d

    if-eq v5, v11, :cond_d

    sget-object v4, Lcom/google/android/gms/internal/zzark;->zzbiS:[I

    add-int/lit8 v5, v12, 0x1

    aput v9, v4, v12

    move v4, v10

    const/4 v8, 0x1

    goto/16 :goto_7

    :cond_d
    sget-object v5, Lcom/google/android/gms/internal/zzark;->zzbiS:[I

    add-int/lit8 v10, v12, 0x1

    aput v9, v5, v12

    sget-object v5, Lcom/google/android/gms/internal/zzark;->zzbiS:[I

    add-int/lit8 v11, v10, 0x1

    aput v9, v5, v10

    move v5, v11

    goto/16 :goto_7

    :cond_e
    if-eqz v7, :cond_13

    invoke-virtual {p0, v11, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-ltz v5, :cond_12

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v9, 0x2c

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v9, :cond_f

    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v10, v4

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_6

    :cond_f
    invoke-virtual {v4, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v3

    if-ne v9, v11, :cond_10

    const v4, 0x7fffffff

    goto :goto_5

    :cond_10
    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :goto_5
    if-gt v10, v4, :cond_11

    sget-object v9, Lcom/google/android/gms/internal/zzark;->zzbiS:[I

    add-int/lit8 v11, v12, 0x1

    aput v10, v9, v12

    sget-object v9, Lcom/google/android/gms/internal/zzark;->zzbiS:[I

    add-int/lit8 v10, v11, 0x1

    aput v4, v9, v11

    move v4, v5

    move v5, v10

    goto/16 :goto_0

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Range quantifier minimum is greater than maximum"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Range number format incorrect"

    invoke-direct {v1, v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Range not ended with \'}\'"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    if-eqz v5, :cond_14

    sget-object v5, Lcom/google/android/gms/internal/zzark;->zzbiS:[I

    add-int/lit8 v10, v12, 0x1

    aput v9, v5, v12

    move v5, v10

    goto :goto_7

    :cond_14
    move v5, v12

    :goto_7
    add-int/2addr v4, v3

    goto/16 :goto_0

    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pattern is too large!"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    if-nez v6, :cond_17

    sget-object p0, Lcom/google/android/gms/internal/zzark;->zzbiS:[I

    invoke-static {p0, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_17
    :try_start_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Set was not terminated!"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zzjU(I)Z
    .locals 1

    const/4 v0, -0x8

    if-eq p0, v0, :cond_1

    const/4 v0, -0x7

    if-eq p0, v0, :cond_1

    const/4 v0, -0x6

    if-eq p0, v0, :cond_1

    const/4 v0, -0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "? "

    iget v1, p0, Lcom/google/android/gms/internal/zzark;->zzakD:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "ADVANCED: "

    goto :goto_0

    :pswitch_1
    const-string v0, "GLOB: "

    goto :goto_0

    :pswitch_2
    const-string v0, "PREFIX: "

    goto :goto_0

    :pswitch_3
    const-string v0, "LITERAL: "

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzark;->zzbiQ:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x10

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "PatternMatcher{"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/gms/internal/zzark;->zzbiQ:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/google/android/gms/internal/zzark;->zzakD:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzark;->zzbiR:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
