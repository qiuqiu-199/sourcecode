.class final synthetic Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field static final $instance:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$$Lambda$0;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$$Lambda$0;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$$Lambda$0;->$instance:Ljava/util/Comparator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$$Lambda$0;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$$Lambda$0;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;

    check-cast v2, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;

    invoke-static {v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao;->lambda$static$0$SubkeyStatusDao(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;)I

    move-result v1

    return v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$$Lambda$0;--->compare(Ljava/lang/Object;Ljava/lang/Object;)I"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
