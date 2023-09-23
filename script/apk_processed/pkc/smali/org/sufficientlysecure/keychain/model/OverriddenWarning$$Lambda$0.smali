.class final synthetic Lorg/sufficientlysecure/keychain/model/OverriddenWarning$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Creator;


# static fields
.field static final $instance:Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/sufficientlysecure/keychain/model/OverriddenWarning$$Lambda$0;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/model/OverriddenWarning$$Lambda$0;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/OverriddenWarning$$Lambda$0;->$instance:Lorg/sufficientlysecure/keychain/OverriddenWarningsModel$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/OverriddenWarning$$Lambda$0;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/OverriddenWarning$$Lambda$0;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public create(Ljava/lang/Long;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/OverriddenWarningsModel;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    new-instance v0, Lorg/sufficientlysecure/keychain/model/AutoValue_OverriddenWarning;

    invoke-direct {v0, v2, v3}, Lorg/sufficientlysecure/keychain/model/AutoValue_OverriddenWarning;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    check-cast v0, Lorg/sufficientlysecure/keychain/OverriddenWarningsModel;

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/model/OverriddenWarning$$Lambda$0;--->create(Ljava/lang/Long;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/OverriddenWarningsModel;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
