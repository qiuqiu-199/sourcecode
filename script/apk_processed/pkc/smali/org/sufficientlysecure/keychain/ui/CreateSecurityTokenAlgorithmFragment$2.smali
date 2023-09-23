.class Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$2;
.super Ljava/lang/Object;
.source "CreateSecurityTokenAlgorithmFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 83
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$2;---><init>(Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 86
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->access$100(Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$2;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
