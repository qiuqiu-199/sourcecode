.class Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$TwoLineArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CreateSecurityTokenAlgorithmFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwoLineArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lorg/sufficientlysecure/keychain/util/Choice<",
        "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/util/Choice<",
            "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;",
            ">;>;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    move-object/16 p1, p4

    .line 163
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$TwoLineArrayAdapter;->this$0:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;

    .line 164
    invoke-direct {v0, v2, p0, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$TwoLineArrayAdapter;---><init>(Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;Landroid/content/Context;ILjava/util/List;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    move-object/16 v4, p2

    move-object/16 p0, p3

    if-nez v4, :cond_0

    .line 172
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$TwoLineArrayAdapter;->this$0:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v0, 0x7f0c0105

    const/4 v1, 0x0

    .line 173
    invoke-virtual {v4, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 176
    :cond_0
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$TwoLineArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/util/Choice;

    const p0, 0x1020014

    .line 178
    invoke-virtual {v4, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const v0, 0x1020015

    .line 179
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 181
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/util/Choice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/util/Choice;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v4

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$TwoLineArrayAdapter;--->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
