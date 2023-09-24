.class final synthetic Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;


# static fields
.field static final $instance:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$$Lambda$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$$Lambda$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$$Lambda$1;->$instance:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$$Lambda$1;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$$Lambda$1;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getDisabledString(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Ljava/lang/Integer;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;->lambda$onLoadKeyInfos$0$RemoteDeduplicatePresenter(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$$Lambda$1;--->getDisabledString(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Ljava/lang/Integer;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
