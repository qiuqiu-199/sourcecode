.class public Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment;
.super Landroid/support/v4/app/Fragment;
.source "LinkedIdCreateHttpsStep1Fragment.java"


# instance fields
.field mEditUri:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 35
    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .locals 0

    .line 35
    invoke-static {p0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment;->checkUri(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static checkUri(Ljava/lang/String;)Z
    .locals 4

    move-object/16 v1, p0

    .line 101
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment;--->checkUri(Ljava/lang/String;)Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance()Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment;
    .locals 5

    .line 39
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment;-><init>()V

    .line 41
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 42
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment;--->newInstance()Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic lambda$onCreateView$0$LinkedIdCreateHttpsStep1Fragment(Landroid/view/View;)V
    .locals 2

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment;->mEditUri:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-static {p1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment;->checkUri(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    invoke-static {p1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;->newInstance(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep2Fragment;

    move-result-object p1

    .line 60
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;->loadFragment(Landroid/support/v4/app/Fragment;I)V

    return-void
.end method

.method final synthetic lambda$onCreateView$1$LinkedIdCreateHttpsStep1Fragment(Landroid/view/View;)V
    .locals 2

    .line 64
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;->loadFragment(Landroid/support/v4/app/Fragment;I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    const p0, 0x7f0c009c

    const/4 v0, 0x0

    .line 49
    invoke-virtual {v2, p0, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09024c

    .line 51
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment$$Lambda$0;

    invoke-direct {p0, v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f09005e

    .line 63
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment$$Lambda$1;

    invoke-direct {p0, v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0901cf

    .line 66
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment;->mEditUri:Landroid/widget/EditText;

    .line 68
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment;->mEditUri:Landroid/widget/EditText;

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment$1;

    invoke-direct {p0, v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment;)V

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-object v2

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
