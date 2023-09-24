.class public Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequireAnyDecryptPassphraseBuilder;
.super Ljava/lang/Object;
.source "RequiredInputParcel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequireAnyDecryptPassphraseBuilder"
.end annotation


# instance fields
.field private final masterKeyIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final subKeyIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 372
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequireAnyDecryptPassphraseBuilder;->masterKeyIds:Ljava/util/ArrayList;

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequireAnyDecryptPassphraseBuilder;->subKeyIds:Ljava/util/ArrayList;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequireAnyDecryptPassphraseBuilder;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public add(JJ)V
    .locals 4

    move-object/16 v1, p0

    move-wide/16 v2, p1

    move-wide/16 p0, p3

    .line 390
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequireAnyDecryptPassphraseBuilder;->masterKeyIds:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequireAnyDecryptPassphraseBuilder;->subKeyIds:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequireAnyDecryptPassphraseBuilder;--->add(JJ)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public build()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;
    .locals 12

    move-object/16 v9, p0

    .line 377
    iget-object v0, v9, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequireAnyDecryptPassphraseBuilder;->masterKeyIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 378
    new-array v6, v0, [J

    .line 379
    new-array v7, v0, [J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 381
    iget-object v2, v9, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequireAnyDecryptPassphraseBuilder;->masterKeyIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v6, v1

    .line 382
    iget-object v2, v9, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequireAnyDecryptPassphraseBuilder;->subKeyIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 385
    :cond_0
    new-instance v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    sget-object v2, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->PASSPHRASE:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    const/4 v1, 0x0

    move-object v3, v1

    check-cast v3, [[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;-><init>(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;[[B[ILjava/util/Date;[J[JLorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$1;)V

    return-object v0

    const-string v10, "M_InsDal"

    const-string v11, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequireAnyDecryptPassphraseBuilder;--->build()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isEmpty()Z
    .locals 4

    move-object/16 v1, p0

    .line 395
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequireAnyDecryptPassphraseBuilder;->masterKeyIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequireAnyDecryptPassphraseBuilder;--->isEmpty()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
