.class final synthetic Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/arch/core/util/Function;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$11;->arg$1:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$11;---><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$11;->arg$1:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;

    check-cast v2, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment;->lambda$onViewCreated$11$ViewKeyAdvShareFragment(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Landroid/arch/lifecycle/LiveData;

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvShareFragment$$Lambda$11;--->apply(Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
